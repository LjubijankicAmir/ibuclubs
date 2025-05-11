import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/iso_8601_duration_serializer.dart';
import 'package:ibuclubs_mobile/core/data/models/error_model.dart';
import 'package:injectable/injectable.dart';

part 'serializers.g.dart';

@SerializersFor([ErrorModel])
final Serializers serializers = _$serializers;

@module
abstract class BuiltValueSerializers {
  @lazySingleton
  Serializers get createSerializers =>
      (serializers.toBuilder()
            ..add(Iso8601DateTimeSerializer())
            ..add(Iso8601DurationSerializer())
            ..addPlugin(StandardJsonPlugin()))
          .build();
}
