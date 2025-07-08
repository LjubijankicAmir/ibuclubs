import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:ibuclubs_mobile/core/data/chopper_clients.dart';
import 'package:ibuclubs_mobile/features/activities/data/dto/activity_dto.dart';
import 'package:ibuclubs_mobile/features/activities/data/dto/create_activity_dto.dart';
import 'package:injectable/injectable.dart';

part 'activity_remote_datasource.chopper.dart';

@lazySingleton
@ChopperApi(baseUrl: '/activity')
abstract class ActivityRemoteDatasource extends ChopperService {
  @factoryMethod
  static ActivityRemoteDatasource create(BaseChopperClient client) =>
      _$ActivityRemoteDatasource(client);

  @POST(path: '/createActivity')
  Future<Response> createActivity(@Body() CreateActivityDto activityDto);

  @GET(path: '/getUpcomingActivities')
  Future<Response<BuiltList<ActivityDto>>> getUpcomingActivities();

  @GET(path: '/getPastClubActivities')
  Future<Response<BuiltList<ActivityDto>>> getPastActivities(
    @Query('clubId') String clubId,
  );

  @POST(path: '/enroll')
  Future<Response> enrollToActivity(@Query() String activityId);
}
