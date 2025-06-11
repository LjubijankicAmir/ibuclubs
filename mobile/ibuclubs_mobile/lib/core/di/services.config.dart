// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/serializer.dart' as _i138;
import 'package:event_bus/event_bus.dart' as _i1017;
import 'package:get_it/get_it.dart' as _i174;
import 'package:ibuclubs_mobile/auth/application/sign_out_handler.dart'
    as _i420;
import 'package:ibuclubs_mobile/auth/authentication/sign_in/application/bloc/sign_in_bloc.dart'
    as _i598;
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
import 'package:ibuclubs_mobile/core/application/event_bus.dart' as _i441;
import 'package:ibuclubs_mobile/core/data/chopper_clients.dart' as _i687;
import 'package:ibuclubs_mobile/core/data/serializers/request_to_json.dart'
    as _i561;
import 'package:ibuclubs_mobile/core/data/serializers/serializers.dart'
    as _i479;
import 'package:ibuclubs_mobile/core/presentation/routes.dart' as _i241;
import 'package:ibuclubs_mobile/features/activities/application/activities_bloc.dart'
    as _i460;
import 'package:ibuclubs_mobile/features/activities/data/datasources/activity_remote_datasource.dart'
    as _i249;
import 'package:ibuclubs_mobile/features/activities/domain/repository/activity_repository.dart'
    as _i442;
import 'package:ibuclubs_mobile/features/clubs/application/clubs_bloc.dart'
    as _i776;
import 'package:ibuclubs_mobile/features/clubs/club_details/application/club_details_bloc.dart'
    as _i196;
import 'package:ibuclubs_mobile/features/clubs/data/datasources/clubs_remote_datasource.dart'
    as _i1043;
import 'package:ibuclubs_mobile/features/clubs/domain/repository/clubs_repository.dart'
    as _i271;
import 'package:ibuclubs_mobile/features/home/application/home_bloc.dart'
    as _i279;
import 'package:ibuclubs_mobile/splash/application/splash_bloc.dart' as _i729;
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
    final eventBusRegistrator = _$EventBusRegistrator();
    final builtValueSerializers = _$BuiltValueSerializers();
    final routers = _$Routers();
    gh.lazySingleton<_i1017.EventBus>(() => eventBusRegistrator.eventBus);
    gh.lazySingleton<_i138.Serializers>(
        () => builtValueSerializers.createSerializers);
    gh.lazySingleton<_i241.AppRouter>(() => routers.appRouter);
    await gh.lazySingletonAsync<_i155.JwtLocalDataSource>(
      () => _i155.JwtLocalDataSource.initialize(),
      preResolve: true,
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i561.RequestSerialization>(
        () => _i561.RequestSerialization(gh<_i138.Serializers>()));
    await gh.singletonAsync<_i47.Configuration>(
      () => _i47.DevConfiguration.initialize(),
      registerFor: {_dev},
      preResolve: true,
    );
    gh.lazySingleton<_i281.UnauthorizedRoutingInterceptor>(
        () => _i281.UnauthorizedRoutingInterceptor(gh<_i241.AppRouter>()));
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
    gh.factory<_i729.SplashBloc>(
        () => _i729.SplashBloc(gh<_i538.JwtRepository>()));
    gh.factory<_i598.SignInBloc>(
        () => _i598.SignInBloc(gh<_i538.JwtRepository>()));
    await gh.singletonAsync<_i420.SignOutHandler>(
      () => _i420.SignOutHandler.handle(
        gh<_i1017.EventBus>(),
        gh<_i241.AppRouter>(),
        gh<_i538.JwtRepository>(),
      ),
      preResolve: true,
    );
    gh.lazySingleton<_i687.BaseChopperClient>(() => _i687.BaseChopperClient(
          gh<_i47.Configuration>(),
          gh<_i138.Serializers>(),
          gh<_i170.JwtAuthenticator>(),
          gh<_i698.JwtInjectionInterceptor>(),
          gh<_i281.UnauthorizedRoutingInterceptor>(),
        ));
    gh.lazySingleton<_i1043.ClubsRemoteDatasource>(() =>
        _i1043.ClubsRemoteDatasource.create(gh<_i687.BaseChopperClient>()));
    gh.lazySingleton<_i249.ActivityRemoteDatasource>(() =>
        _i249.ActivityRemoteDatasource.create(gh<_i687.BaseChopperClient>()));
    gh.lazySingleton<_i271.ClubsRepository>(
        () => _i271.ClubsRepository(gh<_i1043.ClubsRemoteDatasource>()));
    gh.lazySingleton<_i442.ActivityRepository>(
        () => _i442.ActivityRepository(gh<_i249.ActivityRemoteDatasource>()));
    gh.factory<_i279.HomeBloc>(() => _i279.HomeBloc(
          gh<_i271.ClubsRepository>(),
          gh<_i442.ActivityRepository>(),
        ));
    gh.factory<_i196.ClubDetailsBloc>(
        () => _i196.ClubDetailsBloc(gh<_i271.ClubsRepository>()));
    gh.factory<_i776.ClubsBloc>(
        () => _i776.ClubsBloc(gh<_i271.ClubsRepository>()));
    gh.factory<_i460.ActivitiesBloc>(() => _i460.ActivitiesBloc(
          gh<_i442.ActivityRepository>(),
          gh<_i271.ClubsRepository>(),
        ));
    return this;
  }
}

class _$EventBusRegistrator extends _i441.EventBusRegistrator {}

class _$BuiltValueSerializers extends _i479.BuiltValueSerializers {}

class _$Routers extends _i241.Routers {}
