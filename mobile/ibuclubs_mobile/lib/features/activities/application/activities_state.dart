part of 'activities_bloc.dart';

@freezed
class ActivitiesState with _$ActivitiesState {
  factory ActivitiesState({
    required CreateActivityFormState form,
    required RequestState<List<Activity>> activitiesState,
    required RequestState<Club?> ownedClubState,
    required RequestState<Unit> createActivityState,
    required RequestState<Unit> enrollToActivityState,
  }) = _ActivitiesState;

  factory ActivitiesState.initial() => ActivitiesState(
    form: CreateActivityFormState.empty(),
    activitiesState: RequestState.ready(),
    ownedClubState: RequestState.ready(),
    createActivityState: RequestState.ready(),
    enrollToActivityState: RequestState.ready(),
  );
}
