import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/domain/value_failure.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';

class Time extends ValueObject<String> {
  Time(super.value);

  factory Time.empty() {
    return Time('');
  }

  @override
  Option<ValueFailure> validate(String value) {
    if (value.isEmpty) {
      return some(ValueFailure("Time is required"));
    }

    return none();
  }
}
