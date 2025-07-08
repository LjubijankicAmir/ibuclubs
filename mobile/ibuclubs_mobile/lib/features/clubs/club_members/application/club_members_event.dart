part of 'club_members_bloc.dart';

@freezed
class ClubMembersEvent with _$ClubMembersEvent {
  const factory ClubMembersEvent.initialize(String clubId) = _Initialize;
  const factory ClubMembersEvent.promoteMember(String clubId, String memberId) =
      _PromoteMember;
  const factory ClubMembersEvent.demoteMember(String clubId, String memberId) =
      _DemoteMember;
  const factory ClubMembersEvent.kickMember(String clubId, String memberId) =
      _KickMember;
  const factory ClubMembersEvent.pushNotification(
    String clubId,
    String title,
    String message,
  ) = _PushNotification;
}
