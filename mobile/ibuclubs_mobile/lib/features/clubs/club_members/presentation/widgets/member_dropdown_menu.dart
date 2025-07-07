import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/application/club_members_bloc.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/domain/model/club_member.dart';

void showMemberDropdownMenu(
  BuildContext context,
  ClubMember member,
  String callerRole,
  String clubId,
  Offset position,
) {
  final bloc = context.read<ClubMembersBloc>();
  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
      position.dx,
      position.dy - 80,
      position.dx,
      position.dy,
    ),
    elevation: 1,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: kDefaultBorderRadius),
    items: [
      if (member.role == 'Member')
        PopupMenuItem(
          value: 'promote',
          child: Text('Promote', style: TextStyle(color: kPrimaryColor)),
        )
      else if (member.role == 'Admin')
        PopupMenuItem(
          value: 'demote',
          child: Text('Demote', style: TextStyle(color: kPrimaryColor)),
        ),
      if (member.role != 'Owner' && callerRole != member.role)
        PopupMenuItem(
          value: 'kick',
          child: Text('Kick', style: TextStyle(color: Colors.redAccent)),
        ),
    ],
  ).then((value) {
    if (value == 'promote') {
      bloc.add(ClubMembersEvent.promoteMember(clubId, member.id));
    } else if (value == 'demote') {
      bloc.add(ClubMembersEvent.demoteMember(clubId, member.id));
    } else if (value == 'kick') {
      bloc.add(ClubMembersEvent.kickMember(clubId, member.id));
    }
  });
}
