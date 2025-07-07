import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fcm_token_dto.g.dart';

abstract class FcmTokenDto implements Built<FcmTokenDto, FcmTokenDtoBuilder> {
  String get token;

  FcmTokenDto._();

  factory FcmTokenDto([void Function(FcmTokenDtoBuilder) updates]) =
      _$FcmTokenDto;

  static Serializer<FcmTokenDto> get serializer => _$fcmTokenDtoSerializer;
}
