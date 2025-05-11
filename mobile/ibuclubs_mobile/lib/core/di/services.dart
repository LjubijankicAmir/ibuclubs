import 'package:get_it/get_it.dart';
import 'package:ibuclubs_mobile/core/di/services.config.dart';
import 'package:injectable/injectable.dart';

GetIt getService = GetIt.instance;

@injectableInit
Future registerServices(Environment environment) async {
  await getService.init(environment: environment.name);
  await getService.allReady();
}
