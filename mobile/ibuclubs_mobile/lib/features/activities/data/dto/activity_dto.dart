import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ibuclubs_mobile/features/activities/data/dto/enrollment_dto.dart';
import 'package:ibuclubs_mobile/features/activities/domain/model/activity.dart';

part 'activity_dto.g.dart';

abstract class ActivityDto implements Built<ActivityDto, ActivityDtoBuilder> {
  @BuiltValueField(wireName: 'activityId')
  String get id;
  String get clubId;
  String get name;
  String get description;
  String get date;
  String get time;
  int get activityPoints;
  int get maxParticipants;
  bool get isEnrolled;
  @BuiltValueField(wireName: 'activityEnrollments')
  BuiltList<EnrollmentDto> get enrollments;

  factory ActivityDto([void Function(ActivityDtoBuilder) updates]) =
      _$ActivityDto;

  ActivityDto._();

  static Serializer<ActivityDto> get serializer => _$activityDtoSerializer;

  Activity toDomain() {
    return Activity(
      id: id,
      clubId: clubId,
      name: name,
      description: description,
      date: date,
      time: time,
      activityPoints: activityPoints,
      maxParticipants: maxParticipants,
      isEnrolled: isEnrolled,
      enrollments: enrollments.map((e) => e.toDomain()).toList(),
    );
  }
}
