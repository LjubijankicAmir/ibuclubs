import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/domain/model/club_member.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/presentation/widgets/member_dropdown_menu.dart';

class MemberCard extends StatelessWidget {
  final ClubMember member;
  final String callerRole;
  final String clubId;
  const MemberCard({
    super.key,
    required this.member,
    required this.callerRole,
    required this.clubId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: kDefaultBorderRadius,
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: InkWell(
        onTapDown:
            (details) => showMemberDropdownMenu(
              context,
              member,
              callerRole,
              clubId,
              details.globalPosition,
            ),
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
                  Icons.groups_2_outlined,
                  size: 24,
                  color: kPrimaryColor,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "${member.name} ${member.surname}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
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
                                (member.role == "Member")
                                    ? Colors.grey.shade200
                                    : kPrimaryColor.withOpacity(0.1),
                          ),
                          child: Text(
                            member.role,
                            style: TextStyle(
                              color:
                                  (member.role == "Member")
                                      ? Colors.grey.shade600
                                      : kPrimaryColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      member.email,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, size: 20, color: Colors.grey.shade400),
            ],
          ),
        ),
      ),
    );
  }
}
