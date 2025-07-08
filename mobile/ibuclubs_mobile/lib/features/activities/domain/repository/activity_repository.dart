import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/object_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/response_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';
import 'package:ibuclubs_mobile/features/activities/data/datasources/activity_remote_datasource.dart';
import 'package:ibuclubs_mobile/features/activities/data/dto/create_activity_dto.dart';
import 'package:ibuclubs_mobile/features/activities/domain/activity_points.dart';
import 'package:ibuclubs_mobile/features/activities/domain/date.dart';
import 'package:ibuclubs_mobile/features/activities/domain/description.dart';
import 'package:ibuclubs_mobile/features/activities/domain/max_participants.dart';
import 'package:ibuclubs_mobile/features/activities/domain/model/activity.dart';
import 'package:ibuclubs_mobile/features/activities/domain/name.dart';
import 'package:ibuclubs_mobile/features/activities/domain/time.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@lazySingleton
class ActivityRepository {
  final ActivityRemoteDatasource _remoteDatasource;

  ActivityRepository(this._remoteDatasource);

  Future<Either<RequestFailure, List<Activity>>> getUpcomingActivities() async {
    try {
      final response = await _remoteDatasource.getUpcomingActivities();

      if (response.isSuccessful) {
        return right(
          response.body!.map((activity) => activity.toDomain()).toList(),
        );
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }

  Future<Either<RequestFailure, List<Activity>>> getPastActivities(
    String clubId,
  ) async {
    try {
      final response = await _remoteDatasource.getPastActivities(clubId);

      if (response.isSuccessful) {
        return right(
          response.body!.map((activity) => activity.toDomain()).toList(),
        );
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }

  Future<Option<RequestFailure>> enrollToActivity(String activityId) async {
    try {
      final response = await _remoteDatasource.enrollToActivity(activityId);

      if (response.isSuccessful) {
        return none();
      }

      return some(response.toRequestFailure());
    } catch (e) {
      return some(await e.toRequestFailure());
    }
  }

  Future<Option<RequestFailure>> createActivity(
    String clubId,
    Name name,
    Description description,
    Date date,
    Time time,
    ActivityPoints activityPoints,
    MaxParticipants maxParticipants,
  ) async {
    try {
      final model = CreateActivityDto(
        (builder) =>
            builder
              ..clubId = clubId
              ..name = name.value
              ..description = description.value
              ..date = DateFormat(
                'yyyy-MM-dd',
              ).format(DateTime.parse(date.value))
              ..time = time.value
              ..activityPoints = activityPoints.value
              ..maxParticipants = maxParticipants.value,
      );

      final response = await _remoteDatasource.createActivity(model);

      if (response.isSuccessful) {
        return none();
      }

      return some(response.toRequestFailure());
    } catch (e) {
      return some(await e.toRequestFailure());
    }
  }
}
