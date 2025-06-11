import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/domain/model/club_details.dart';

part 'club_details_dto.g.dart';

abstract class ClubDetailsDto
    implements Built<ClubDetailsDto, ClubDetailsDtoBuilder> {
  @BuiltValueField(wireName: 'clubId')
  String get id;
  String get name;
  String get description;
  String? get socialMediaLink;
  int get membershipCount;
  bool get isEnrolled;

  factory ClubDetailsDto([void Function(ClubDetailsDtoBuilder) updates]) =
      _$ClubDetailsDto;

  ClubDetailsDto._();

  static Serializer<ClubDetailsDto> get serializer =>
      _$clubDetailsDtoSerializer;

  ClubDetails toDomain() {
    return ClubDetails(
      id: id,
      name: name,
      description: description,
      socialMediaLink: socialMediaLink,
      membershipCount: membershipCount,
      isEnrolled: isEnrolled,
    );
  }
}
