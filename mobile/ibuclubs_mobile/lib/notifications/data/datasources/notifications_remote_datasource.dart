import 'package:chopper/chopper.dart';
import 'package:ibuclubs_mobile/core/data/chopper_clients.dart';
import 'package:ibuclubs_mobile/notifications/data/dto/fcm_token_dto.dart';
import 'package:injectable/injectable.dart';

part 'notifications_remote_datasource.chopper.dart';

@lazySingleton
@ChopperApi(baseUrl: '/notifications')
abstract class NotificationsRemoteDatasource extends ChopperService {
  @factoryMethod
  static NotificationsRemoteDatasource create(BaseChopperClient client) =>
      _$NotificationsRemoteDatasource(client);

  @POST(path: '/register')
  Future<Response> registerToken(@Body() FcmTokenDto body);
}
