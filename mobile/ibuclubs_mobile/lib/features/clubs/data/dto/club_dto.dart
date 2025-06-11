import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/model/club.dart';

part 'club_dto.g.dart';

abstract class ClubDto implements Built<ClubDto, ClubDtoBuilder> {
  @BuiltValueField(wireName: 'clubId')
  String get id;
  String get name;
  String get description;
  String? get socialMediaLink;

  factory ClubDto([void Function(ClubDtoBuilder) updates]) = _$ClubDto;

  ClubDto._();

  static Serializer<ClubDto> get serializer => _$clubDtoSerializer;

  Club toDomain() {
    return Club(
      id: id,
      name: name,
      description: description,
      socialMediaLink: socialMediaLink,
    );
  }
}
