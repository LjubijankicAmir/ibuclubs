import 'package:built_value/serializer.dart';
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

import 'package:ibuclubs_mobile/config/configuration.dart';
import 'package:ibuclubs_mobile/core/data/models/error_model.dart';
import 'package:ibuclubs_mobile/core/data/converters/built_value_converter.dart';

@lazySingleton
base class AuthChopperClient extends ChopperClient {
  AuthChopperClient(Configuration configuration, Serializers serializers)
    : super(
        baseUrl: Uri.parse(configuration.baseUrl),
        converter: BuiltValueConverter(serializers),
        errorConverter: BuiltValueConverter(serializers, errorType: ErrorModel),
      );
}
