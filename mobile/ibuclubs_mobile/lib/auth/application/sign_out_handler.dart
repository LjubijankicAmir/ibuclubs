import 'package:event_bus/event_bus.dart';
import 'package:ibuclubs_mobile/auth/application/events/sign_out_event.dart';
import 'package:ibuclubs_mobile/auth/token/domain/repositories/jwt_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.gr.dart';

@singleton
class SignOutHandler {
  @preResolve
  @factoryMethod
  static Future<SignOutHandler> handle(
    EventBus eventBus,
    AppRouter appRouter,
    JwtRepository jwtRepository,
  ) async {
    eventBus.on<SignOutEvent>().listen((signOutEvent) async {
      jwtRepository.delete();
      appRouter.replaceAll([const SignInRoute()]);
    });
    return SignOutHandler();
  }
}
