import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/data/request/request_state.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/model/clubs.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/repository/clubs_repository.dart';
import 'package:injectable/injectable.dart';

part 'clubs_bloc.freezed.dart';
part 'clubs_event.dart';
part 'clubs_state.dart';

@injectable
class ClubsBloc extends Bloc<ClubsEvent, ClubsState> {
  final ClubsRepository _clubsRepository;
  ClubsBloc(this._clubsRepository) : super(ClubsState.initial()) {
    on<_Initialize>(_onInitialize);
  }

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<ClubsState> emit,
  ) async {
    emit(state.copyWith(requestState: RequestState.processing()));
    final allClubsResult = await _clubsRepository.getAllClubs();
    final myClubsResult = await _clubsRepository.getMyClubs();

    emit(
      state.copyWith(
        requestState: allClubsResult.fold(
          (failure) => RequestState.failed(failure),
          (clubs) => myClubsResult.fold(
            (failure) => RequestState.failed(failure),
            (myMemberships) {
              for (final membership in myMemberships) {
                clubs.removeWhere((c) => c.id == membership.club.id);
              }
              return RequestState.success(
                Clubs(allClubs: clubs, myClubs: myMemberships),
              );
            },
          ),
        ),
      ),
    );
  }
}
