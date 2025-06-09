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
  Future<Response<Unit>> createClub(CreateClubDto clubDto) {
    final Uri $url = Uri.parse('/club/createClub');
    final $body = clubDto;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Unit, Unit>($request);
  }

  @override
  Future<Response<BuiltList<MembershipDto>>> getMyClubs() {
    final Uri $url = Uri.parse('/club/getMyClubs');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BuiltList<MembershipDto>, MembershipDto>($request);
  }

  @override
  Future<Response<BuiltList<ClubDto>>> getAllClubs() {
    final Uri $url = Uri.parse('/club/getApprovedClubs');
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

  @override
  Future<Response<dynamic>> enrollToClub(String clubId) {
    final Uri $url = Uri.parse('/club/enroll/${clubId}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> leaveClub(String clubId) {
    final Uri $url = Uri.parse('/club/leave/${clubId}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
