import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ibuclubs_mobile/features/clubs/data/dto/club_dto.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/model/membership.dart';

part 'membership_dto.g.dart';

abstract class MembershipDto
    implements Built<MembershipDto, MembershipDtoBuilder> {
  ClubDto get club;
  String get role;

  factory MembershipDto([void Function(MembershipDtoBuilder) updates]) =
      _$MembershipDto;

  MembershipDto._();

  static Serializer<MembershipDto> get serializer => _$membershipDtoSerializer;

  Membership toDomain() {
    return Membership(club: club.toDomain(), role: role);
  }
}
