import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RequestSerialization {
  final Serializers serializers;

  RequestSerialization(this.serializers);

  String toJson<T>(T object) {
    final serializer = serializers.serializerForType(T) as Serializer<T>?;
    if (serializer == null) throw const RequestFailure.unexpectedError();

    return jsonEncode(serializers.serialize(object));
  }
}
