import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/domain/value_failure.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';

class Description extends ValueObject<String> {
  Description(super.value);

  factory Description.empty() {
    return Description('');
  }

  @override
  Option<ValueFailure> validate(String value) {
    if (value.isEmpty) {
      return some(ValueFailure("Description is required"));
    } else if (value.length < 16) {
      return some(ValueFailure("Description is too short"));
    } else if (value.length > 256) {
      return some(ValueFailure("Description is too long"));
    }
    return none();
  }
}
