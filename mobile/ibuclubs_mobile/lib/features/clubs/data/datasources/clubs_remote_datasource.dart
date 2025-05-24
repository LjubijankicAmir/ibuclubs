import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:ibuclubs_mobile/core/data/chopper_clients.dart';
import 'package:ibuclubs_mobile/features/clubs/data/dto/club_dto.dart';
import 'package:injectable/injectable.dart';

part 'clubs_remote_datasource.chopper.dart';

@lazySingleton
@ChopperApi(baseUrl: '/club')
abstract class ClubsRemoteDatasource extends ChopperService {
  @factoryMethod
  static ClubsRemoteDatasource create(BaseChopperClient client) =>
      _$ClubsRemoteDatasource(client);

  @GET(path: '/getMyClubs')
  Future<Response<BuiltList<ClubDto>>> getMyClubs();

  @GET(path: 'getAllClubs')
  Future<Response<BuiltList<ClubDto>>> getAllClubs();
}
