// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_token_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FcmTokenDto> _$fcmTokenDtoSerializer = new _$FcmTokenDtoSerializer();

class _$FcmTokenDtoSerializer implements StructuredSerializer<FcmTokenDto> {
  @override
  final Iterable<Type> types = const [FcmTokenDto, _$FcmTokenDto];
  @override
  final String wireName = 'FcmTokenDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, FcmTokenDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  FcmTokenDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FcmTokenDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FcmTokenDto extends FcmTokenDto {
  @override
  final String token;

  factory _$FcmTokenDto([void Function(FcmTokenDtoBuilder)? updates]) =>
      (new FcmTokenDtoBuilder()..update(updates))._build();

  _$FcmTokenDto._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'FcmTokenDto', 'token');
  }

  @override
  FcmTokenDto rebuild(void Function(FcmTokenDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FcmTokenDtoBuilder toBuilder() => new FcmTokenDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FcmTokenDto && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FcmTokenDto')..add('token', token))
        .toString();
  }
}

class FcmTokenDtoBuilder implements Builder<FcmTokenDto, FcmTokenDtoBuilder> {
  _$FcmTokenDto? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  FcmTokenDtoBuilder();

  FcmTokenDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FcmTokenDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FcmTokenDto;
  }

  @override
  void update(void Function(FcmTokenDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FcmTokenDto build() => _build();

  _$FcmTokenDto _build() {
    final _$result = _$v ??
        new _$FcmTokenDto._(
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'FcmTokenDto', 'token'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
