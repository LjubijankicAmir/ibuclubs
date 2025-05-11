import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';

class Startup {
  final Environment environment;

  Startup(this.environment);

  Future<void> configureServices() async {
    await registerServices(environment);
  }

  Future<void> configure() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Hive.initFlutter();
  }
}
