part of 'configuration.dart';

@Environments.production
@Singleton(as: Configuration)
@preResolve
class ProdConfiguration extends Configuration {
  @override
  final Environment environment = Environments.production;

  @factoryMethod
  static Future<ProdConfiguration> initialize() async {
    await Configuration._loadProduction();

    return ProdConfiguration();
  }
}
