import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/data/request/request_state.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/domain/model/club_details.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/repository/clubs_repository.dart';
import 'package:injectable/injectable.dart';

part 'club_details_bloc.freezed.dart';
part 'club_details_state.dart';
part 'club_details_event.dart';

@injectable
class ClubDetailsBloc extends Bloc<ClubDetailsEvent, ClubDetailsState> {
  final ClubsRepository _clubsRepository;
  ClubDetailsBloc(this._clubsRepository) : super(ClubDetailsState.initial()) {
    on<_Initialize>(_onInitialize);
    on<_UpdateMembership>(_onUpdateMembership);
  }

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<ClubDetailsState> emit,
  ) async {
    emit(state.copyWith(requestState: RequestState.processing()));

    final clubDetailsResult = await _clubsRepository.getClubById(event.clubId);

    emit(
      state.copyWith(
        requestState: clubDetailsResult.fold(
          (failure) => RequestState.failed(failure),
          (clubDetails) => RequestState.success(clubDetails),
        ),
      ),
    );
  }

  Future<void> _onUpdateMembership(
    _UpdateMembership event,
    Emitter<ClubDetailsState> emit,
  ) async {
    emit(state.copyWith(membershipState: RequestState.processing()));

    final result =
        event.isMember
            ? await _clubsRepository.enrollToClub(event.clubId)
            : await _clubsRepository.leaveClub(event.clubId);

    emit(
      state.copyWith(
        membershipState: result.fold(
          () => RequestState.success(unit),
          (failure) => RequestState.failed(failure),
        ),
      ),
    );
  }
}
