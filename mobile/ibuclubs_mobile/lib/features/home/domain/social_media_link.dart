import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/domain/value_failure.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';

class SocialMediaLink extends ValueObject<String> {
  SocialMediaLink(super.value);

  factory SocialMediaLink.empty() {
    return SocialMediaLink('');
  }

  @override
  Option<ValueFailure> validate(String value) {
    return none();
  }
}
