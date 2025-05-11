part of 'configuration.dart';

@Environments.development
@Singleton(as: Configuration)
@preResolve
class DevConfiguration extends Configuration {
  @override
  final Environment environment = Environments.development;

  @factoryMethod
  static Future<DevConfiguration> initialize() async {
    await Configuration._loadDevelopment();

    return DevConfiguration();
  }
}
