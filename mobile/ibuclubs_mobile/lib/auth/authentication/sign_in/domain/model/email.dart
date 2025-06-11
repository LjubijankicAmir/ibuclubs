import 'package:dartz/dartz.dart';

import 'package:ibuclubs_mobile/core/domain/value_failure.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';

class Email extends ValueObject<String> {
  Email(super.value);

  factory Email.empty() => Email("");

  @override
  Option<ValueFailure> validate(String value) {
    if (value.isEmpty) {
      return some(const ValueFailure("Email is required"));
    }

    final regExp = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@"
      r"[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?"
      r"(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
    );
    if (!regExp.hasMatch(value)) {
      return some(const ValueFailure("Email is invalid"));
    }

    final parts = value.split('@');
    if (parts.length != 2 || parts[1].toLowerCase() != 'stu.ibu.edu.ba') {
      return some(const ValueFailure("Please use the university e-mail"));
    }

    return none();
  }
}
