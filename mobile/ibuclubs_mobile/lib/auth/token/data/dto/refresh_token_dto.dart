import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:ibuclubs_mobile/auth/token/domain/models/jwt.dart';

part 'refresh_token_dto.g.dart';

abstract class RefreshTokenDto
    implements Built<RefreshTokenDto, RefreshTokenDtoBuilder> {
  String get token;
  String get refreshToken;

  factory RefreshTokenDto([void Function(RefreshTokenDtoBuilder) updates]) =
      _$RefreshTokenDto;

  RefreshTokenDto._();

  static Serializer<RefreshTokenDto> get serializer =>
      _$refreshTokenDtoSerializer;

  factory RefreshTokenDto.fromJwt(Jwt jwt) => RefreshTokenDto(
    (builder) =>
        builder
          .._token = jwt.token
          .._refreshToken = jwt.refreshToken,
  );
}
