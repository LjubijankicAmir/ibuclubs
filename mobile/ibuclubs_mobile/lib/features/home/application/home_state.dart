part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required RequestState<Unit> requestState,
    required SubmitClubFormState form,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
    requestState: RequestState.ready(),
    form: SubmitClubFormState.empty(),
  );
}
