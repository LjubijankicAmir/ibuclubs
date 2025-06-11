part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required RequestState<List<Activity>> activitiesState,
    required RequestState<Unit> requestState,
    required SubmitClubFormState form,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
    activitiesState: RequestState.ready(),
    requestState: RequestState.ready(),
    form: SubmitClubFormState.empty(),
  );
}
