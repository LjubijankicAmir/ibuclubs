import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/core/presentation/app_widget.dart';
import 'package:ibuclubs_mobile/environments.dart';
import 'package:ibuclubs_mobile/startup.dart';

Future<void> main() async {
  final startup = Startup(Environments.development);
  await startup.configure();
  await startup.configureServices();
  runApp(AppWidget());
}
