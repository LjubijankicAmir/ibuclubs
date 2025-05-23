part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({required AuthState authState}) = _SplashState;
  factory SplashState.initial() =>
      SplashState(authState: const AuthState.initial());
}
