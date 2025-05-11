part of 'configuration.dart';

extension BaseUrl on Configuration {
  static const String _fieldName = "baseUrl";

  String get baseUrl =>
      Configuration._globalConfiguration.get(_fieldName) as String;
}
