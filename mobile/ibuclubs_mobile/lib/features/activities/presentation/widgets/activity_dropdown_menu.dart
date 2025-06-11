import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/features/activities/application/activities_bloc.dart';
import 'package:ibuclubs_mobile/features/activities/domain/model/activity.dart';

void showActivityDropdownMenu(
  BuildContext context,
  Activity activity,
  bool isOwned,
  Offset position,
) {
  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
      position.dx,
      position.dy,
      position.dx + 1,
      position.dy + 1,
    ),
    elevation: 1,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: kDefaultBorderRadius),
    items: [
      if (!isOwned && !activity.isEnrolled)
        PopupMenuItem(
          value: 'enroll',
          child: Text('Enroll', style: TextStyle(color: kPrimaryColor)),
        ),
      if (isOwned)
        PopupMenuItem(
          value: 'delete',
          child: Text('Delete', style: TextStyle(color: kPrimaryColor)),
        ),
    ],
  ).then((value) {
    if (value == 'enroll') {
      context.read<ActivitiesBloc>().add(
        ActivitiesEvent.enrollToActivity(activity.id),
      );
    } else if (value == 'delete') {
      // Handle delete action
    }
  });
}
