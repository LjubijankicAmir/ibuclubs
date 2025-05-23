import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/auth/token/data/failures/jwt_failure.dart';
import 'package:ibuclubs_mobile/auth/token/domain/models/jwt.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated({required Jwt jwt}) = Authenticated;
  const factory AuthState.unauthenticated(
    Either<JwtFailure, RequestFailure>? failure,
  ) = Unauthenticated;
}
