// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_remote_datasource.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$NotificationsRemoteDatasource
    extends NotificationsRemoteDatasource {
  _$NotificationsRemoteDatasource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = NotificationsRemoteDatasource;

  @override
  Future<Response<dynamic>> registerToken(FcmTokenDto body) {
    final Uri $url = Uri.parse('/notifications/register');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
