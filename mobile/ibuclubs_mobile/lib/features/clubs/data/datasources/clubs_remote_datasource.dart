import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:ibuclubs_mobile/core/data/chopper_clients.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/data/club_details_dto.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/data/dto/club_member_dto.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/data/dto/notification_dto.dart';
import 'package:ibuclubs_mobile/features/clubs/data/dto/club_dto.dart';
import 'package:ibuclubs_mobile/features/clubs/data/dto/create_club_dto.dart';
import 'package:ibuclubs_mobile/features/clubs/data/dto/membership_dto.dart';
import 'package:injectable/injectable.dart';

part 'clubs_remote_datasource.chopper.dart';

@lazySingleton
@ChopperApi(baseUrl: '/club')
abstract class ClubsRemoteDatasource extends ChopperService {
  @factoryMethod
  static ClubsRemoteDatasource create(BaseChopperClient client) =>
      _$ClubsRemoteDatasource(client);

  @POST(path: '/createClub')
  Future<Response> createClub(@Body() CreateClubDto clubDto);

  @GET(path: '/getMyClubs')
  Future<Response<BuiltList<MembershipDto>>> getMyClubs();

  @GET(path: 'getApprovedClubs')
  Future<Response<BuiltList<ClubDto>>> getAllClubs();

  @GET(path: '/getOwnedClub')
  Future<Response<ClubDto?>> getOwnedClub();

  @GET(path: '/getMembersWithRoles/{clubId}')
  Future<Response<BuiltList<ClubMemberDto>>> getMembersWithRoles(
    @Path('clubId') String clubId,
  );

  @PUT(path: '/changeMemberRole/{clubId}/members/{memberId}/role')
  Future<Response> changeMemberRole(
    @Path('clubId') String clubId,
    @Path('memberId') String memberId,
    @Query('role') String role,
  );

  @DELETE(path: '/kickMember/{clubId}/members/{memberId}')
  Future<Response> kickMember(
    @Path('clubId') String clubId,
    @Path('memberId') String memberId,
  );

  @POST(path: '/notifyMembers/{clubId}')
  Future<Response> notifyMembers(
    @Path('clubId') String clubId,
    @Body() NotificationDto notificationDto,
  );

  @GET(path: '/getClubById/{clubId}')
  Future<Response<ClubDetailsDto>> getClubById(@Path('clubId') String clubId);

  @POST(path: '/enroll/{clubId}')
  Future<Response> enrollToClub(@Path('clubId') String clubId);

  @POST(path: '/leave/{clubId}')
  Future<Response> leaveClub(@Path('clubId') String clubId);
}
