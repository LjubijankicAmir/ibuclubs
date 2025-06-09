import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_club_dto.g.dart';

abstract class CreateClubDto
    implements Built<CreateClubDto, CreateClubDtoBuilder> {
  String get name;
  String get description;
  String? get socialMediaLink;

  factory CreateClubDto([void Function(CreateClubDtoBuilder) updates]) =
      _$CreateClubDto;

  CreateClubDto._();

  static Serializer<CreateClubDto> get serializer => _$createClubDtoSerializer;
}
