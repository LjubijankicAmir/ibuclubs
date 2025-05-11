// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SignInDto> _$signInDtoSerializer = new _$SignInDtoSerializer();

class _$SignInDtoSerializer implements StructuredSerializer<SignInDto> {
  @override
  final Iterable<Type> types = const [SignInDto, _$SignInDto];
  @override
  final String wireName = 'SignInDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, SignInDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SignInDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignInDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SignInDto extends SignInDto {
  @override
  final String email;
  @override
  final String password;

  factory _$SignInDto([void Function(SignInDtoBuilder)? updates]) =>
      (new SignInDtoBuilder()..update(updates))._build();

  _$SignInDto._({required this.email, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'SignInDto', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'SignInDto', 'password');
  }

  @override
  SignInDto rebuild(void Function(SignInDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignInDtoBuilder toBuilder() => new SignInDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignInDto &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignInDto')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class SignInDtoBuilder implements Builder<SignInDto, SignInDtoBuilder> {
  _$SignInDto? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  SignInDtoBuilder();

  SignInDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignInDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignInDto;
  }

  @override
  void update(void Function(SignInDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignInDto build() => _build();

  _$SignInDto _build() {
    final _$result = _$v ??
        new _$SignInDto._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'SignInDto', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'SignInDto', 'password'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
