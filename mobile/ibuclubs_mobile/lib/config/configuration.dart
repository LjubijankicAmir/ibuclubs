import 'package:global_configuration/global_configuration.dart';
import 'package:injectable/injectable.dart';
import 'package:ibuclubs_mobile/environments.dart';

part 'base_url.dart';
part 'configuration.development.dart';
part 'configuration.production.dart';

abstract class Configuration {
  static final GlobalConfiguration _globalConfiguration = GlobalConfiguration();

  Environment get environment;

  static Future _loadDevelopment() async {
    await _globalConfiguration.loadFromPath(
      "config/appsettings.development.json",
    );
  }

  static Future _loadProduction() async {
    await _globalConfiguration.loadFromPath(
      "config/appsettings.production.json",
    );
  }
}
