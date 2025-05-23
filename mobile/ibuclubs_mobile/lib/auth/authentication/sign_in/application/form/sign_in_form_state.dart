import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/domain/model/email.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/domain/model/password.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';
import 'package:ibuclubs_mobile/core/presentation/form/form.dart';

part 'sign_in_form_state.freezed.dart';

@freezed
class SignInFormState with _$SignInFormState, Form {
  factory SignInFormState(
    ValueFormField<Email> email,
    ValueFormField<Password> password,
  ) = _SignUpFormState;

  factory SignInFormState.empty() => SignInFormState(
    ValueFormField<Email>.pure(Email.empty()),
    ValueFormField<Password>.pure(Password.empty()),
  );

  SignInFormState._();

  @override
  BuiltList<ValueFormField<ValueObject>> getFields() =>
      BuiltList([email, password]);
}
