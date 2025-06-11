import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/domain/value_failure.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';

class Name extends ValueObject<String> {
  Name(super.value);

  factory Name.empty() {
    return Name('');
  }

  @override
  Option<ValueFailure> validate(String value) {
    if (value.isEmpty) {
      return some(ValueFailure("Activity name is required"));
    } else if (value.length < 5) {
      return some(ValueFailure("Activity name is too short"));
    } else if (value.length > 20) {
      return some(ValueFailure("Activity name is too long"));
    }

    return none();
  }
}
