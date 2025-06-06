// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clubs_remote_datasource.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClubsRemoteDatasource extends ClubsRemoteDatasource {
  _$ClubsRemoteDatasource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClubsRemoteDatasource;

  @override
  Future<Response<BuiltList<ClubDto>>> getMyClubs() {
    final Uri $url = Uri.parse('/club/getMyClubs');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BuiltList<ClubDto>, ClubDto>($request);
  }

  @override
  Future<Response<BuiltList<ClubDto>>> getAllClubs() {
    final Uri $url = Uri.parse('/club/getAllClubs');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BuiltList<ClubDto>, ClubDto>($request);
  }

  @override
  Future<Response<ClubDetailsDto>> getClubById(String clubId) {
    final Uri $url = Uri.parse('/club/getClubById/${clubId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ClubDetailsDto, ClubDetailsDto>($request);
  }
}
