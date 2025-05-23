// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JwtDto> _$jwtDtoSerializer = new _$JwtDtoSerializer();

class _$JwtDtoSerializer implements StructuredSerializer<JwtDto> {
  @override
  final Iterable<Type> types = const [JwtDto, _$JwtDto];
  @override
  final String wireName = 'JwtDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, JwtDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  JwtDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JwtDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$JwtDto extends JwtDto {
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String? role;

  factory _$JwtDto([void Function(JwtDtoBuilder)? updates]) =>
      (new JwtDtoBuilder()..update(updates))._build();

  _$JwtDto._({required this.accessToken, required this.refreshToken, this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'JwtDto', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'JwtDto', 'refreshToken');
  }

  @override
  JwtDto rebuild(void Function(JwtDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwtDtoBuilder toBuilder() => new JwtDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JwtDto &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JwtDto')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('role', role))
        .toString();
  }
}

class JwtDtoBuilder implements Builder<JwtDto, JwtDtoBuilder> {
  _$JwtDto? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  JwtDtoBuilder();

  JwtDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JwtDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JwtDto;
  }

  @override
  void update(void Function(JwtDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JwtDto build() => _build();

  _$JwtDto _build() {
    final _$result = _$v ??
        new _$JwtDto._(
          accessToken: BuiltValueNullFieldError.checkNotNull(
              accessToken, r'JwtDto', 'accessToken'),
          refreshToken: BuiltValueNullFieldError.checkNotNull(
              refreshToken, r'JwtDto', 'refreshToken'),
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
