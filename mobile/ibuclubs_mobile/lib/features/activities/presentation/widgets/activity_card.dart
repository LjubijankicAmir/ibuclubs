import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/features/activities/domain/model/activity.dart';
import 'package:ibuclubs_mobile/features/activities/presentation/widgets/activity_dropdown_menu.dart';
import 'package:intl/intl.dart';

enum ActivityStatus { enrolled, open, full }

class ActivityCard extends StatelessWidget {
  final Activity activity;
  final bool canTap;
  final double? width;
  final bool isOwned;
  const ActivityCard({
    super.key,
    required this.activity,
    required this.isOwned,
    this.canTap = true,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final status =
        activity.isEnrolled
            ? ActivityStatus.enrolled
            : (
              activity.enrollments.length == activity.maxParticipants
                  ? ActivityStatus.full
                  : ActivityStatus.open,
            );
    final statusString =
        status == ActivityStatus.enrolled
            ? "Enrolled"
            : (status == ActivityStatus.full ? "Full" : "Open");
    final rawDateTime = "${activity.date} ${activity.time}";
    final dateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(rawDateTime);
    final formatted = DateFormat("dd/MM/yyyy • HH:mm").format(dateTime);
    return SizedBox(
      width: width ?? double.infinity,
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: kDefaultBorderRadius,
          side: BorderSide(color: Colors.grey.shade200),
        ),
        child: InkWell(
          onTapDown:
              (details) =>
                  canTap
                      ? showActivityDropdownMenu(
                        context,
                        activity,
                        isOwned,
                        details.globalPosition,
                      )
                      : null,
          borderRadius: kDefaultBorderRadius,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.event_available_outlined,
                    size: 36,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              activity.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: kDefaultBorderRadius,
                              color:
                                  (status == ActivityStatus.enrolled ||
                                          status == ActivityStatus.open)
                                      ? kPrimaryColor.withOpacity(0.1)
                                      : Colors.grey.shade200,
                            ),
                            child: Text(
                              statusString,
                              style: TextStyle(
                                color:
                                    (status == ActivityStatus.enrolled ||
                                            status == ActivityStatus.open)
                                        ? kPrimaryColor
                                        : Colors.grey.shade600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        activity.description,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "Activity points: ${activity.activityPoints}",
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Max participants: ${activity.maxParticipants}",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        formatted.toString(),
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
