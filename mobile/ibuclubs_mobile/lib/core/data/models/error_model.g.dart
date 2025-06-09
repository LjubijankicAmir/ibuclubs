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
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
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
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ErrorModel extends ErrorModel {
  @override
  final String error;

  factory _$ErrorModel([void Function(ErrorModelBuilder)? updates]) =>
      (new ErrorModelBuilder()..update(updates))._build();

  _$ErrorModel._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(error, r'ErrorModel', 'error');
  }

  @override
  ErrorModel rebuild(void Function(ErrorModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorModelBuilder toBuilder() => new ErrorModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorModel && error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorModel')..add('error', error))
        .toString();
  }
}

class ErrorModelBuilder implements Builder<ErrorModel, ErrorModelBuilder> {
  _$ErrorModel? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ErrorModelBuilder();

  ErrorModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
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
    final _$result = _$v ??
        new _$ErrorModel._(
          error: BuiltValueNullFieldError.checkNotNull(
              error, r'ErrorModel', 'error'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
