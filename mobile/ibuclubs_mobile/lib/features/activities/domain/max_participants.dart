import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/domain/value_failure.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';

class MaxParticipants extends ValueObject<int> {
  MaxParticipants(super.value);

  factory MaxParticipants.empty() {
    return MaxParticipants(0);
  }

  @override
  Option<ValueFailure> validate(int value) {
    if (value <= 0) {
      return some(ValueFailure("Max participants are required"));
    }

    return none();
  }
}
