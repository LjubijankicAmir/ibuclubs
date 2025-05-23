import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/application/bloc/sign_in_bloc.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/domain/model/email.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/domain/model/password.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/form/widgets/value_form_field.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.gr.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/primary_button.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/request/request_failure_snack.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AutoRouter.of(context);
    final bloc = getService<SignInBloc>();
    return BlocProvider<SignInBloc>(
      create: (context) => bloc,
      child: BlocConsumer<SignInBloc, SignInState>(
        listenWhen:
            (previous, current) =>
                previous.requestState != current.requestState,
        listener:
            (context, state) => state.requestState.maybeWhen(
              success: (jwt) {
                appRouter.replace(MainRoute());
                return null;
              },
              failed: (failure) => RequestFailureSnack.show(context, failure),
              orElse: () {
                return null;
              },
            ),
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).primaryColorDark,
            body: Padding(
              padding: kDefaultPadding,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/ibuclubs_logo.png',
                      width: 300,
                      height: 300,
                    ),
                    ValueFormField(
                      fieldName: 'Email',
                      formField: state.form.email,
                      onLeft: () => bloc.add(SignInEvent.emailLeft()),
                      onChanged:
                          (value) =>
                              bloc.add(SignInEvent.emailChanged(Email(value))),
                    ),
                    const SizedBox(height: 4),
                    ValueFormField(
                      fieldName: 'Password',
                      secret: true,
                      formField: state.form.password,
                      onLeft: () => bloc.add(SignInEvent.passwordLeft()),
                      onChanged:
                          (value) => bloc.add(
                            SignInEvent.passwordChanged(Password(value)),
                          ),
                    ),
                    const SizedBox(height: 16),
                    state.requestState.maybeWhen(
                      processing:
                          () => const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                      orElse:
                          () => PrimaryButton(
                            onPressed: () {
                              bloc.add(const SignInEvent.signIn());
                            },
                            fullWidth: false,
                            text: 'Sign In',
                            leading: Icon(Icons.login, color: Colors.white),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
