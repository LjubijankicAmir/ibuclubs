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
  Future<Response<dynamic>> createClub(CreateClubDto clubDto) {
    final Uri $url = Uri.parse('/club/createClub');
    final $body = clubDto;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
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
  Future<Response<ClubDto>> getOwnedClub() {
    final Uri $url = Uri.parse('/club/getOwnedClub');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ClubDto, ClubDto>($request);
  }

  @override
  Future<Response<BuiltList<ClubMemberDto>>> getMembersWithRoles(
      String clubId) {
    final Uri $url = Uri.parse('/club/getMembersWithRoles/${clubId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BuiltList<ClubMemberDto>, ClubMemberDto>($request);
  }

  @override
  Future<Response<dynamic>> changeMemberRole(
    String clubId,
    String memberId,
    String role,
  ) {
    final Uri $url =
        Uri.parse('/club/changeMemberRole/${clubId}/members/${memberId}/role');
    final Map<String, dynamic> $params = <String, dynamic>{'role': role};
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> kickMember(
    String clubId,
    String memberId,
  ) {
    final Uri $url =
        Uri.parse('/club/kickMember/${clubId}/members/${memberId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> notifyMembers(
    String clubId,
    NotificationDto notificationDto,
  ) {
    final Uri $url = Uri.parse('/club/notifyMembers/${clubId}');
    final $body = notificationDto;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
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
