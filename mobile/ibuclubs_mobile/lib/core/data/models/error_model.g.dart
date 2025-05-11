// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ErrorModel> _$errorModelSerializer = new _$ErrorModelSerializer();

class _$ErrorModelSerializer implements StructuredSerializer<ErrorModel> {
  @override
  final Iterable<Type> types = const [ErrorModel, _$ErrorModel];
  @override
  final String wireName = 'ErrorModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ErrorModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'errors',
      serializers.serialize(object.errors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  ErrorModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ErrorModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'errors':
          result.errors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ErrorModel extends ErrorModel {
  @override
  final BuiltList<String> errors;

  factory _$ErrorModel([void Function(ErrorModelBuilder)? updates]) =>
      (new ErrorModelBuilder()..update(updates))._build();

  _$ErrorModel._({required this.errors}) : super._() {
    BuiltValueNullFieldError.checkNotNull(errors, r'ErrorModel', 'errors');
  }

  @override
  ErrorModel rebuild(void Function(ErrorModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorModelBuilder toBuilder() => new ErrorModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorModel && errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorModel')..add('errors', errors))
        .toString();
  }
}

class ErrorModelBuilder implements Builder<ErrorModel, ErrorModelBuilder> {
  _$ErrorModel? _$v;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors =>
      _$this._errors ??= new ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  ErrorModelBuilder();

  ErrorModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorModel;
  }

  @override
  void update(void Function(ErrorModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorModel build() => _build();

  _$ErrorModel _build() {
    _$ErrorModel _$result;
    try {
      _$result = _$v ??
          new _$ErrorModel._(
            errors: errors.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ErrorModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
