import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.gr.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/model/membership.dart';

class MyClubCard extends StatelessWidget {
  final Membership membership;
  const MyClubCard({super.key, required this.membership});

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
        onTap:
            () => AutoRouter.of(
              context,
            ).push(ClubDetailsRoute(id: membership.club.id)),
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
                        Expanded(
                          child: Text(
                            membership.club.name,
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
                                (membership.role == "Member")
                                    ? Colors.grey.shade200
                                    : kPrimaryColor.withOpacity(0.1),
                          ),
                          child: Text(
                            membership.role,
                            style: TextStyle(
                              color:
                                  (membership.role == "Member")
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
                      membership.club.description,
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
