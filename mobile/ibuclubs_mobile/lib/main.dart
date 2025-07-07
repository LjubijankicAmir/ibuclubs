import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibuclubs_mobile/core/presentation/app_widget.dart';
import 'package:ibuclubs_mobile/environments.dart';
import 'package:ibuclubs_mobile/notifications/domain/service/notifcations_service.dart';
import 'package:ibuclubs_mobile/startup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final startup = Startup(Environments.development);
  await startup.configure();
  await startup.configureServices();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.white,
    ),
  );

  await Firebase.initializeApp();
  await FirebaseMessaging.instance.requestPermission();
  await NotificationsService.setupNotificationChannel();

  runApp(AppWidget());
}
