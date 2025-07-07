import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/auth/authentication/application/auth_state.dart';
import 'package:ibuclubs_mobile/auth/token/domain/repositories/jwt_repository.dart';
import 'package:ibuclubs_mobile/core/data/request/request_state.dart';
import 'package:ibuclubs_mobile/notifications/domain/repository/notifications_repository.dart';
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_state.dart';
part 'splash_event.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final JwtRepository _jwtRepository;
  final NotificationsRepository _notificationsRepository;
  SplashBloc(this._jwtRepository, this._notificationsRepository)
    : super(SplashState.initial()) {
    on<_Initialize>(_onInitialize);
  }

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<SplashState> emit,
  ) async {
    final token = await _jwtRepository.refreshWithLocal();

    await token.fold(
      (failure) async {
        emit(state.copyWith(authState: AuthState.unauthenticated(failure)));
      },
      (success) async {
        emit(state.copyWith(authState: AuthState.authenticated(jwt: success)));

        final fcmToken = await _notificationsRepository.registerToken();
        emit(
          state.copyWith(
            notificationsSetupState: fcmToken.fold(
              (failure) => RequestState.failed(failure),
              (_) => RequestState.success(unit),
            ),
          ),
        );
      },
    );
  }
}
