import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.gr.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/fade_in_widget.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/request/request_failure_snack.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/slide_in_widget.dart';
import 'package:ibuclubs_mobile/splash/application/splash_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getService<SplashBloc>();
    final appRouter = AutoRouter.of(context);
    return BlocProvider<SplashBloc>(
      create: (context) => bloc..add(SplashEvent.initialize()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<SplashBloc, SplashState>(
            listener:
                (context, state) => state.authState.when(
                  initial: () => null,
                  authenticated: (_) {
                    Future.delayed(
                      const Duration(seconds: 2),
                      () => appRouter.replace(MainRoute()),
                    );
                    return null;
                  },
                  unauthenticated: (_) {
                    Future.delayed(
                      const Duration(seconds: 2),
                      () => appRouter.replace(SignInRoute()),
                    );
                    return null;
                  },
                ),
          ),
          BlocListener<SplashBloc, SplashState>(
            listener:
                (context, state) => state.notificationsSetupState.maybeWhen(
                  // ignore: body_might_complete_normally_nullable
                  orElse: () {},
                  failed:
                      (failure) => RequestFailureSnack.show(context, failure),
                ),
          ),
        ],
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColorDark,
          body: Center(
            child: FadeInWidget(
              child: SlideInWidget(
                start: Offset(0, 0.2),
                child: Image.asset(
                  'assets/images/ibuclubs_logo.png',
                  width: 300,
                  height: 300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
