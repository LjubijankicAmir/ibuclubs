part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(Email data) = _EmailChanged;
  const factory SignInEvent.emailLeft() = _EmailLeft;
  const factory SignInEvent.passwordChanged(Password data) = _PasswordChanged;
  const factory SignInEvent.passwordLeft() = _PasswordLeft;
  const factory SignInEvent.signIn() = _SignIn;
}
