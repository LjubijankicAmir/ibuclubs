import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/domain/model/club_member.dart';

part 'club_member_dto.g.dart';

abstract class ClubMemberDto
    implements Built<ClubMemberDto, ClubMemberDtoBuilder> {
  String get studentId;
  String get name;
  String get surname;
  String get email;
  String get role;

  ClubMemberDto._();

  factory ClubMemberDto([void Function(ClubMemberDtoBuilder) updates]) =
      _$ClubMemberDto;

  static Serializer<ClubMemberDto> get serializer => _$clubMemberDtoSerializer;

  ClubMember toDomain() => ClubMember(
    id: studentId,
    name: name,
    surname: surname,
    email: email,
    role: role,
  );
}
