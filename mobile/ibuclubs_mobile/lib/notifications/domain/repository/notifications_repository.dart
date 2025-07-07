import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/object_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/response_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';
import 'package:ibuclubs_mobile/notifications/data/datasources/notifications_remote_datasource.dart';
import 'package:ibuclubs_mobile/notifications/data/dto/fcm_token_dto.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NotificationsRepository {
  final NotificationsRemoteDatasource _remoteDatasource;
  NotificationsRepository(this._remoteDatasource);

  Future<Either<RequestFailure, void>> registerToken() async {
    try {
      final token = await FirebaseMessaging.instance.getToken();

      final model = FcmTokenDto((builder) => builder..token = token);

      final response = await _remoteDatasource.registerToken(model);

      if (response.isSuccessful) {
        return right(null);
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }
}
