// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/serializer.dart' as _i138;
import 'package:get_it/get_it.dart' as _i174;
import 'package:ibuclubs_mobile/auth/data/auth_chopper_client.dart' as _i367;
import 'package:ibuclubs_mobile/auth/data/interceptors/unauthorized_routing_interceptor.dart'
    as _i281;
import 'package:ibuclubs_mobile/auth/token/data/datasources/jwt_local_datasource.dart'
    as _i155;
import 'package:ibuclubs_mobile/auth/token/data/datasources/jwt_remote_datasource.dart'
    as _i916;
import 'package:ibuclubs_mobile/auth/token/data/interceptors/jwt_authenticator.dart'
    as _i170;
import 'package:ibuclubs_mobile/auth/token/data/interceptors/jwt_interceptor.dart'
    as _i698;
import 'package:ibuclubs_mobile/auth/token/domain/repositories/jwt_repository.dart'
    as _i538;
import 'package:ibuclubs_mobile/config/configuration.dart' as _i47;
import 'package:ibuclubs_mobile/core/data/chopper_clients.dart' as _i687;
import 'package:ibuclubs_mobile/core/data/serializers/request_to_json.dart'
    as _i561;
import 'package:ibuclubs_mobile/core/data/serializers/serializers.dart'
    as _i479;
import 'package:ibuclubs_mobile/core/presentation/routes.dart' as _i241;
import 'package:injectable/injectable.dart' as _i526;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final builtValueSerializers = _$BuiltValueSerializers();
    final routers = _$Routers();
    gh.lazySingleton<_i138.Serializers>(
        () => builtValueSerializers.createSerializers);
    gh.lazySingleton<_i241.AppRouter>(() => routers.appRouter);
    await gh.lazySingletonAsync<_i155.JwtLocalDataSource>(
      () => _i155.JwtLocalDataSource.initialize(),
      preResolve: true,
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i281.UnauthorizedRoutingInterceptor>(
        () => const _i281.UnauthorizedRoutingInterceptor());
    gh.lazySingleton<_i561.RequestSerialization>(
        () => _i561.RequestSerialization(gh<_i138.Serializers>()));
    await gh.singletonAsync<_i47.Configuration>(
      () => _i47.DevConfiguration.initialize(),
      registerFor: {_dev},
      preResolve: true,
    );
    gh.lazySingleton<_i367.AuthChopperClient>(() => _i367.AuthChopperClient(
          gh<_i47.Configuration>(),
          gh<_i138.Serializers>(),
        ));
    await gh.singletonAsync<_i47.Configuration>(
      () => _i47.ProdConfiguration.initialize(),
      registerFor: {_prod},
      preResolve: true,
    );
    gh.lazySingleton<_i916.JwtRemoteDataSource>(
        () => _i916.JwtRemoteDataSource.create(gh<_i367.AuthChopperClient>()));
    gh.lazySingleton<_i538.JwtRepository>(() => _i538.JwtRepository(
          gh<_i155.JwtLocalDataSource>(),
          gh<_i916.JwtRemoteDataSource>(),
        ));
    gh.lazySingleton<_i698.JwtInjectionInterceptor>(
        () => _i698.JwtInjectionInterceptor(gh<_i538.JwtRepository>()));
    gh.lazySingleton<_i170.JwtAuthenticator>(
        () => _i170.JwtAuthenticator(gh<_i538.JwtRepository>()));
    gh.lazySingleton<_i687.BaseChopperClient>(() => _i687.BaseChopperClient(
          gh<_i47.Configuration>(),
          gh<_i138.Serializers>(),
          gh<_i170.JwtAuthenticator>(),
          gh<_i698.JwtInjectionInterceptor>(),
          gh<_i281.UnauthorizedRoutingInterceptor>(),
        ));
    return this;
  }
}

class _$BuiltValueSerializers extends _i479.BuiltValueSerializers {}

class _$Routers extends _i241.Routers {}
