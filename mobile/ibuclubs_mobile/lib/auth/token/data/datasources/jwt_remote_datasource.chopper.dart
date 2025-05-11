// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_remote_datasource.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$JwtRemoteDataSource extends JwtRemoteDataSource {
  _$JwtRemoteDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = JwtRemoteDataSource;

  @override
  Future<Response<JwtDto>> get(SignInDto body) {
    final Uri $url = Uri.parse('/auth/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<JwtDto, JwtDto>($request);
  }

  @override
  Future<Response<JwtDto>> refresh(RefreshTokenDto body) {
    final Uri $url = Uri.parse('/auth/refreshToken');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<JwtDto, JwtDto>($request);
  }
}
