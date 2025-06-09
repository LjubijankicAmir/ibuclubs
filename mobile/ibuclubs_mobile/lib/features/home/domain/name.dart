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
      return some(ValueFailure("Club name is required"));
    } else if (value.length < 3) {
      return some(ValueFailure("Club name is too short"));
    } else if (value.length > 20) {
      return some(ValueFailure("Club name is too long"));
    }

    return none();
  }
}
