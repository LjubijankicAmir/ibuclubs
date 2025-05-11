import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ibuclubs_mobile/auth/token/domain/models/jwt.dart';

part 'jwt_dto.g.dart';

abstract class JwtDto implements Built<JwtDto, JwtDtoBuilder> {
  String get token;
  String get refreshToken;
  String get role;

  factory JwtDto([void Function(JwtDtoBuilder) updates]) = _$JwtDto;

  JwtDto._();

  static Serializer<JwtDto> get serializer => _$jwtDtoSerializer;

  Jwt toJwt() {
    return Jwt(token: token, refreshToken: refreshToken, role: role);
  }
}
