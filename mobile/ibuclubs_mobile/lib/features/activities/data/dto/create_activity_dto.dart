import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_activity_dto.g.dart';

abstract class CreateActivityDto
    implements Built<CreateActivityDto, CreateActivityDtoBuilder> {
  String get clubId;
  String get name;
  String get description;
  String get date;
  String get time;
  int get activityPoints;
  int get maxParticipants;

  factory CreateActivityDto([void Function(CreateActivityDtoBuilder) updates]) =
      _$CreateActivityDto;

  CreateActivityDto._();

  static Serializer<CreateActivityDto> get serializer =>
      _$createActivityDtoSerializer;
}
