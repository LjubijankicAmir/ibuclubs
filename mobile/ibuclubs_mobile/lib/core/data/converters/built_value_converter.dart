import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:chopper/chopper.dart';

/// A custom [Converter] and [ErrorConverter] that handles conversion for classes
/// having a serializer implementation made with the built_value package.
class BuiltValueConverter implements Converter, ErrorConverter {
  final Serializers serializers;
  final JsonConverter jsonConverter = const JsonConverter();
  final Type? errorType;

  /// Builds a new BuiltValueConverter instance that uses built_value serializers defined
  /// in the provided [serializers] parameter.
  ///
  /// If the error body cannot be converted with serializers and [errorType] is provided
  /// and it's not `null`, BuiltValueConverter will try to deserialize the error body into
  /// [errorType].
  BuiltValueConverter(this.serializers, {this.errorType});

  T? _deserialize<T>(dynamic value) {
    final serializer = serializers.serializerForType(T) as Serializer<T>?;

    if (serializer == null) throw 'Serializer not found for $T';

    return serializers.deserializeWith<T>(serializer, value);
  }

  BuiltList<InnerType> _deserializeListOf<InnerType>(Iterable value) {
    final deserialized = value.map((value) => _deserialize<InnerType>(value));
    return BuiltList<InnerType>(deserialized.toList(growable: false));
  }

  BodyType? deserialize<BodyType, InnerType>(dynamic entity) {
    if (entity is BodyType) return entity;
    if (entity is Iterable) {
      return _deserializeListOf<InnerType>(entity) as BodyType;
    } else if (entity is Map && entity.containsKey('notifications')) {
      //return _deserializeListOf<PushNotificationModel>(
      //entity['notifications'] as Iterable) as BodyType;
    }

    return _deserialize<BodyType>(entity);
  }

  @override
  Request convertRequest(Request request) {
    return jsonConverter.convertRequest(
      request.copyWith(body: serializers.serialize(request.body)),
    );
  }

  @override
  Future<Response<BodyType>> convertResponse<BodyType, InnerType>(
    Response response,
  ) async {
    // ove funkcije prabaciti na future
    if (BodyType == dynamic) return response as Response<BodyType>;

    final jsonResponse = await jsonConverter.convertResponse(response);
    final body = deserialize<BodyType, InnerType>(jsonResponse.body);
    return jsonResponse.copyWith(body: body);
  }

  @override
  Future<Response> convertError<BodyType, InnerType>(Response response) async {
    if (response.statusCode != 400 && response.statusCode != 404) {
      return response;
    }

    final jsonResponse = await jsonConverter.convertResponse(response);

    dynamic body;

    final type = errorType;
    if (type != null) {
      final serializer = serializers.serializerForType(type);
      if (serializer != null) {
        body = serializers.deserializeWith(serializer, jsonResponse.body);
      }
    }
    body ??= jsonResponse.body;

    return jsonResponse.copyWith(body: body);
  }
}
