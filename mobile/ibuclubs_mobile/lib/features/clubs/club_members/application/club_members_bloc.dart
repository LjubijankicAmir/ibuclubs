import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/data/request/request_state.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/domain/model/club_member.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/repository/clubs_repository.dart';
import 'package:injectable/injectable.dart';

part 'club_members_state.dart';
part 'club_members_event.dart';
part 'club_members_bloc.freezed.dart';

@injectable
class ClubMembersBloc extends Bloc<ClubMembersEvent, ClubMembersState> {
  final ClubsRepository clubsRepository;
  ClubMembersBloc(this.clubsRepository) : super(ClubMembersState.initial()) {
    on<_Initialize>(_onInitialize);
    on<_PromoteMember>(_onPromoteMember);
    on<_DemoteMember>(_onDemoteMember);
    on<_KickMember>(_onKickMember);
  }

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<ClubMembersState> emit,
  ) async {
    emit(state.copyWith(requestState: RequestState.processing()));

    final result = await clubsRepository.getMembers(event.clubId);

    emit(
      state.copyWith(
        requestState: result.fold(
          (failure) => RequestState.failed(failure),
          (success) => RequestState.success(success),
        ),
      ),
    );
  }

  Future<void> _onPromoteMember(
    _PromoteMember event,
    Emitter<ClubMembersState> emit,
  ) async {
    emit(state.copyWith(actionRequestState: RequestState.processing()));

    final result = await clubsRepository.promoteMember(
      event.clubId,
      event.memberId,
    );

    emit(
      state.copyWith(
        actionRequestState: result.fold(
          (failure) => RequestState.failed(failure),
          (success) => RequestState.success(unit),
        ),
      ),
    );
  }

  Future<void> _onDemoteMember(
    _DemoteMember event,
    Emitter<ClubMembersState> emit,
  ) async {
    emit(state.copyWith(actionRequestState: RequestState.processing()));

    final result = await clubsRepository.demoteMember(
      event.clubId,
      event.memberId,
    );

    emit(
      state.copyWith(
        actionRequestState: result.fold(
          (failure) => RequestState.failed(failure),
          (success) => RequestState.success(unit),
        ),
      ),
    );
  }

  Future<void> _onKickMember(
    _KickMember event,
    Emitter<ClubMembersState> emit,
  ) async {
    emit(state.copyWith(actionRequestState: RequestState.processing()));

    final result = await clubsRepository.kickMember(
      event.clubId,
      event.memberId,
    );

    emit(
      state.copyWith(
        actionRequestState: result.fold(
          (failure) => RequestState.failed(failure),
          (success) => RequestState.success(unit),
        ),
      ),
    );
  }
}
