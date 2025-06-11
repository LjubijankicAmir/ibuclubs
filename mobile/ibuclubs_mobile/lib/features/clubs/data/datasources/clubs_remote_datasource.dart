import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/data/chopper_clients.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/data/club_details_dto.dart';
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

  @GET(path: '/getClubById/{clubId}')
  Future<Response<ClubDetailsDto>> getClubById(@Path('clubId') String clubId);

  @POST(path: '/enroll/{clubId}')
  Future<Response> enrollToClub(@Path('clubId') String clubId);

  @POST(path: '/leave/{clubId}')
  Future<Response> leaveClub(@Path('clubId') String clubId);
}
