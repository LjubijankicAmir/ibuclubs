import 'package:dartz/dartz.dart';

import 'package:ibuclubs_mobile/core/domain/value_failure.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';

class Password extends ValueObject<String> {
  Password(super.value);

  factory Password.empty() => Password("");

  @override
  Option<ValueFailure> validate(String value) {
    return none();
  }
}
