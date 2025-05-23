import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/application/form/sign_in_form_state.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/domain/model/email.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/domain/model/password.dart';
import 'package:ibuclubs_mobile/auth/token/domain/models/jwt.dart';
import 'package:ibuclubs_mobile/auth/token/domain/repositories/jwt_repository.dart';
import 'package:ibuclubs_mobile/core/data/request/request_state.dart';
import 'package:ibuclubs_mobile/core/presentation/form/value_form_field.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final JwtRepository _jwtRepository;
  SignInBloc(this._jwtRepository) : super(SignInState.initial()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_EmailLeft>(_onEmailLeft);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_PasswordLeft>(_onPasswordLeft);
    on<_SignIn>(_onSignIn);
  }

  Future<void> _onEmailChanged(
    _EmailChanged event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith.form(email: state.form.email.changed(event.data)));
  }

  Future<void> _onEmailLeft(_EmailLeft event, Emitter<SignInState> emit) async {
    emit(
      state.copyWith(form: state.form.copyWith(email: state.form.email.left())),
    );
  }

  Future<void> _onPasswordChanged(
    _PasswordChanged event,
    Emitter<SignInState> emit,
  ) async {
    emit(
      state.copyWith(
        form: state.form.copyWith(
          password: state.form.password.changed(event.data),
        ),
      ),
    );
  }

  Future<void> _onPasswordLeft(
    _PasswordLeft event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith.form(password: state.form.password.left()));
  }

  Future<void> _onSignIn(_SignIn event, Emitter<SignInState> emit) async {
    emit(
      state.copyWith(
        form: state.form.copyWith(
          email: state.form.email.left(),
          password: state.form.password.left(),
        ),
      ),
    );

    if (!state.form.isValid) return;

    emit(state.copyWith(requestState: const RequestState.processing()));

    final result = await _jwtRepository.getWithCredentials(
      state.form.email.input.value,
      state.form.password.input.value,
    );

    result.fold(
      (failure) =>
          emit(state.copyWith(requestState: RequestState.failed(failure))),
      (jwt) => emit(state.copyWith(requestState: RequestState.success(jwt))),
    );
  }
}
