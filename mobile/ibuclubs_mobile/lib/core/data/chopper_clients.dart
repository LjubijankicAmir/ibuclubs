import 'package:built_value/serializer.dart';
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:ibuclubs_mobile/auth/data/interceptors/unauthorized_routing_interceptor.dart';
import 'package:ibuclubs_mobile/auth/token/data/interceptors/jwt_authenticator.dart';
import 'package:ibuclubs_mobile/auth/token/data/interceptors/jwt_interceptor.dart';
import 'package:ibuclubs_mobile/config/configuration.dart';
import 'package:ibuclubs_mobile/core/data/models/error_model.dart';
import 'package:ibuclubs_mobile/core/data/converters/built_value_converter.dart';

@lazySingleton
base class BaseChopperClient extends ChopperClient {
  BaseChopperClient(
    Configuration configuration,
    Serializers serializers,
    JwtAuthenticator jwtAuthenticator,
    JwtInjectionInterceptor jwtInjectionInterceptor,
    UnauthorizedRoutingInterceptor unauthorizedRoutingInterceptor,
  ) : super(
        baseUrl: Uri.parse(configuration.baseUrl),
        converter: BuiltValueConverter(serializers),
        errorConverter: BuiltValueConverter(serializers, errorType: ErrorModel),
        interceptors: [
          jwtInjectionInterceptor,
          HttpLoggingInterceptor(),
          unauthorizedRoutingInterceptor,
        ],
        authenticator: jwtAuthenticator,
      );
}
