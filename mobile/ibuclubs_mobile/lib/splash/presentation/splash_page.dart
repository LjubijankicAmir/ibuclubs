import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/fade_in_widget.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/slide_in_widget.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AutoRouter.of(context);
    return Scaffold(
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
    );
  }
}
