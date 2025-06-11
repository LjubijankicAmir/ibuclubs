import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/domain/value_failure.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';

class ActivityPoints extends ValueObject<int> {
  ActivityPoints(super.value);

  factory ActivityPoints.empty() {
    return ActivityPoints(0);
  }

  @override
  Option<ValueFailure> validate(int value) {
    if (value <= 0) {
      return some(ValueFailure("Points are required"));
    }

    return none();
  }
}
