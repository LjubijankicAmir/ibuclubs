// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RefreshTokenDto> _$refreshTokenDtoSerializer =
    new _$RefreshTokenDtoSerializer();

class _$RefreshTokenDtoSerializer
    implements StructuredSerializer<RefreshTokenDto> {
  @override
  final Iterable<Type> types = const [RefreshTokenDto, _$RefreshTokenDto];
  @override
  final String wireName = 'RefreshTokenDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, RefreshTokenDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RefreshTokenDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefreshTokenDtoBuilder();

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
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RefreshTokenDto extends RefreshTokenDto {
  @override
  final String token;
  @override
  final String refreshToken;

  factory _$RefreshTokenDto([void Function(RefreshTokenDtoBuilder)? updates]) =>
      (new RefreshTokenDtoBuilder()..update(updates))._build();

  _$RefreshTokenDto._({required this.token, required this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'RefreshTokenDto', 'token');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'RefreshTokenDto', 'refreshToken');
  }

  @override
  RefreshTokenDto rebuild(void Function(RefreshTokenDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshTokenDtoBuilder toBuilder() =>
      new RefreshTokenDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshTokenDto &&
        token == other.token &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshTokenDto')
          ..add('token', token)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class RefreshTokenDtoBuilder
    implements Builder<RefreshTokenDto, RefreshTokenDtoBuilder> {
  _$RefreshTokenDto? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  RefreshTokenDtoBuilder();

  RefreshTokenDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshTokenDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefreshTokenDto;
  }

  @override
  void update(void Function(RefreshTokenDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshTokenDto build() => _build();

  _$RefreshTokenDto _build() {
    final _$result = _$v ??
        new _$RefreshTokenDto._(
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'RefreshTokenDto', 'token'),
          refreshToken: BuiltValueNullFieldError.checkNotNull(
              refreshToken, r'RefreshTokenDto', 'refreshToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
