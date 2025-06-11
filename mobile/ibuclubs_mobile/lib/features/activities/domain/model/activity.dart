import 'package:ibuclubs_mobile/features/activities/domain/model/enrollment.dart';

class Activity {
  final String id;
  final String clubId;
  final String name;
  final String description;
  final String date;
  final String time; // in minutes
  final int activityPoints;
  final int maxParticipants;
  final bool isEnrolled;
  final List<Enrollment> enrollments;

  Activity({
    required this.id,
    required this.clubId,
    required this.name,
    required this.description,
    required this.date,
    required this.time,
    required this.activityPoints,
    required this.maxParticipants,
    required this.isEnrolled,
    required this.enrollments,
  });
}
