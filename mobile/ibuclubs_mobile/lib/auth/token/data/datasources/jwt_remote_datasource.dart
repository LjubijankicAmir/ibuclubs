import 'package:chopper/chopper.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/data/dto/sign_in_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:ibuclubs_mobile/auth/data/auth_chopper_client.dart';
import 'package:ibuclubs_mobile/auth/token/data/dto/jwt_dto.dart';
import 'package:ibuclubs_mobile/auth/token/data/dto/refresh_token_dto.dart';

part 'jwt_remote_datasource.chopper.dart';

@lazySingleton
@ChopperApi(baseUrl: '/auth')
abstract class JwtRemoteDataSource extends ChopperService {
  @factoryMethod
  static JwtRemoteDataSource create(AuthChopperClient client) =>
      _$JwtRemoteDataSource(client);

  @POST(path: '/login')
  Future<Response<JwtDto>> get(@Body() SignInDto body);

  @POST(path: '/refreshToken')
  Future<Response<JwtDto>> refresh(@Body() RefreshTokenDto body);
}
