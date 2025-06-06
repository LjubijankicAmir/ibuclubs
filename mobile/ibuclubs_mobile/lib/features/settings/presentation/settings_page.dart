import 'package:auto_route/auto_route.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/auth/application/events/sign_out_event.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/link.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/menu_list_tile.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final EventBus eventBus = getService<EventBus>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kBackgroundColor,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: kBackgroundColor),
          onPressed: () => context.router.maybePop(),
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Link(
              url: "https://www.ibu.edu.ba",
              child: MenuListTile(
                title: "About",
                leading: Icon(Icons.info_outline),
              ),
            ),
            MenuListTile(
              title: "Sign Out",
              titleColor: Colors.red,
              leading: Icon(Icons.logout_outlined, color: Colors.red),
              hasTrailing: false,
              onPressed: () {
                eventBus.fire(const SignOutEvent());
              },
            ),
            const SizedBox(height: 32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Version 1.0.0",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
