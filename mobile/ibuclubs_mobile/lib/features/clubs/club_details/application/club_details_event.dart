part of 'club_details_bloc.dart';

@freezed
class ClubDetailsEvent with _$ClubDetailsEvent {
  const factory ClubDetailsEvent.initialize({required String clubId}) =
      _Initialize;
  const factory ClubDetailsEvent.updateMembership({
    required String clubId,
    required bool isMember,
  }) = _UpdateMembership;
}
