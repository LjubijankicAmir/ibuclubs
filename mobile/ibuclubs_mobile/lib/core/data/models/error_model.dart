import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_model.g.dart';

abstract class ErrorModel implements Built<ErrorModel, ErrorModelBuilder> {
  String get error;

  factory ErrorModel([void Function(ErrorModelBuilder) updates]) = _$ErrorModel;
  ErrorModel._();

  static Serializer<ErrorModel> get serializer => _$errorModelSerializer;
}
