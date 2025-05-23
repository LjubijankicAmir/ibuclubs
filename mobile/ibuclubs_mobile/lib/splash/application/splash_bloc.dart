import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/auth/authentication/application/auth_state.dart';
import 'package:ibuclubs_mobile/auth/token/domain/repositories/jwt_repository.dart';
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_state.dart';
part 'splash_event.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final JwtRepository _jwtRepository;
  SplashBloc(this._jwtRepository) : super(SplashState.initial()) {
    on<_Initialize>(_onInitialize);
  }

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<SplashState> emit,
  ) async {
    final token = await _jwtRepository.refreshWithLocal();

    emit(
      state.copyWith(
        authState: token.fold(
          (failure) => AuthState.unauthenticated(failure),
          (jwt) => AuthState.authenticated(jwt: jwt),
        ),
      ),
    );
  }
}
