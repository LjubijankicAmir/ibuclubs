import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ibuclubs_mobile/features/activities/domain/model/enrollment.dart';

part 'enrollment_dto.g.dart';

abstract class EnrollmentDto
    implements Built<EnrollmentDto, EnrollmentDtoBuilder> {
  String get studentId;
  String get activityId;

  factory EnrollmentDto([void Function(EnrollmentDtoBuilder) updates]) =
      _$EnrollmentDto;

  EnrollmentDto._();

  static Serializer<EnrollmentDto> get serializer => _$enrollmentDtoSerializer;

  Enrollment toDomain() {
    return Enrollment(studentId: studentId, activityId: activityId);
  }
}
