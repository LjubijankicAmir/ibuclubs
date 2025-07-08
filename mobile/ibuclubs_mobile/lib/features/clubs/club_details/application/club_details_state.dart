part of 'club_details_bloc.dart';

@freezed
class ClubDetailsState with _$ClubDetailsState {
  factory ClubDetailsState({
    required RequestState<ClubDetails> requestState,
    required RequestState<List<Activity>> pastActivitiesState,
    required RequestState<Unit> membershipState,
  }) = _ClubDetailsState;

  factory ClubDetailsState.initial() => ClubDetailsState(
    requestState: RequestState.ready(),
    pastActivitiesState: RequestState.ready(),
    membershipState: RequestState.ready(),
  );
}
