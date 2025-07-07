part of 'club_members_bloc.dart';

@freezed
class ClubMembersState with _$ClubMembersState {
  const factory ClubMembersState({
    required RequestState<List<ClubMember>> requestState,
    required RequestState<Unit> actionRequestState,
  }) = _ClubMembersState;

  factory ClubMembersState.initial() => ClubMembersState(
    requestState: RequestState.ready(),
    actionRequestState: RequestState.ready(),
  );
}
