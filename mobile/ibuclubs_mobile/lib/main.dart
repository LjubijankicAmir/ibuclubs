import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibuclubs_mobile/core/presentation/app_widget.dart';
import 'package:ibuclubs_mobile/environments.dart';
import 'package:ibuclubs_mobile/startup.dart';

Future<void> main() async {
  final startup = Startup(Environments.development);
  await startup.configure();
  await startup.configureServices();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.white,
    ),
  );
  runApp(AppWidget());
}
