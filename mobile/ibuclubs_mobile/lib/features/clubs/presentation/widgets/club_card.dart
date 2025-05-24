import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';

class ClubCard extends StatelessWidget {
  final String name;
  final String description;
  const ClubCard({super.key, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: kDefaultBorderRadius),
      child: Padding(
        padding: kDefaultPadding,
        child: Row(
          children: [
            Icon(Icons.groups_2_outlined, size: 32, color: kPrimaryColor),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(color: Colors.grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
