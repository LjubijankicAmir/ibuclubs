import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_failure.freezed.dart';

@freezed
class JwtFailure with _$JwtFailure {
  const factory JwtFailure.noJwt() = NoJwt;
}
