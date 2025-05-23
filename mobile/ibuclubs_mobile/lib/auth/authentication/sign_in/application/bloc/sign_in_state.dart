part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required SignInFormState form,
    required RequestState<Jwt> requestState,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
    form: SignInFormState.empty(),
    requestState: const RequestState.ready(),
  );
}
