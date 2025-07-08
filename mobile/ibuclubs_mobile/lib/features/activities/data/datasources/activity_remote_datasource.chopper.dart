// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_remote_datasource.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ActivityRemoteDatasource extends ActivityRemoteDatasource {
  _$ActivityRemoteDatasource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ActivityRemoteDatasource;

  @override
  Future<Response<dynamic>> createActivity(CreateActivityDto activityDto) {
    final Uri $url = Uri.parse('/activity/createActivity');
    final $body = activityDto;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<BuiltList<ActivityDto>>> getUpcomingActivities() {
    final Uri $url = Uri.parse('/activity/getUpcomingActivities');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BuiltList<ActivityDto>, ActivityDto>($request);
  }

  @override
  Future<Response<BuiltList<ActivityDto>>> getPastActivities(String clubId) {
    final Uri $url = Uri.parse('/activity/getPastClubActivities');
    final Map<String, dynamic> $params = <String, dynamic>{'clubId': clubId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<BuiltList<ActivityDto>, ActivityDto>($request);
  }

  @override
  Future<Response<dynamic>> enrollToActivity(String activityId) {
    final Uri $url = Uri.parse('/activity/enroll');
    final Map<String, dynamic> $params = <String, dynamic>{
      'activityId': activityId
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
