import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_dto.g.dart';

abstract class NotificationDto
    implements Built<NotificationDto, NotificationDtoBuilder> {
  String get title;
  String get description;

  NotificationDto._();
  factory NotificationDto([void Function(NotificationDtoBuilder) updates]) =
      _$NotificationDto;

  static Serializer<NotificationDto> get serializer =>
      _$notificationDtoSerializer;
}
