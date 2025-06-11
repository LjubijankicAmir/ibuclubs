part of 'activities_bloc.dart';

@freezed
class ActivitiesEvent with _$ActivitiesEvent {
  const factory ActivitiesEvent.initialize() = _Initialize;
  const factory ActivitiesEvent.nameChanged(Name name) = _NameChanged;
  const factory ActivitiesEvent.nameLeft() = _NameLeft;
  const factory ActivitiesEvent.descriptionChanged(Description description) =
      _DescriptionChanged;
  const factory ActivitiesEvent.descriptionLeft() = _DescriptionLeft;
  const factory ActivitiesEvent.dateChanged(Date date) = _DateChanged;
  const factory ActivitiesEvent.dateLeft() = _DateLeft;
  const factory ActivitiesEvent.timeChanged(Time time) = _TimeChanged;
  const factory ActivitiesEvent.timeLeft() = _TimeLeft;
  const factory ActivitiesEvent.activityPointsChanged(
    ActivityPoints activityPoints,
  ) = _ActivityPointsChanged;
  const factory ActivitiesEvent.activityPointsLeft() = _ActivityPointsLeft;
  const factory ActivitiesEvent.maxParticipantsChanged(
    MaxParticipants maxParticipants,
  ) = _MaxParticipantsChanged;
  const factory ActivitiesEvent.maxParticipantsLeft() = _MaxParticipantsLeft;
  const factory ActivitiesEvent.createActivity() = _CreateActivity;
  const factory ActivitiesEvent.enrollToActivity(String activityId) =
      _EnrollToActivity;
}
