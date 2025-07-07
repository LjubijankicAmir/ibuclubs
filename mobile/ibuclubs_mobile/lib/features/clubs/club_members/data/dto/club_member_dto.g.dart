// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_member_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClubMemberDto> _$clubMemberDtoSerializer =
    new _$ClubMemberDtoSerializer();

class _$ClubMemberDtoSerializer implements StructuredSerializer<ClubMemberDto> {
  @override
  final Iterable<Type> types = const [ClubMemberDto, _$ClubMemberDto];
  @override
  final String wireName = 'ClubMemberDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClubMemberDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'studentId',
      serializers.serialize(object.studentId,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'surname',
      serializers.serialize(object.surname,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ClubMemberDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClubMemberDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'studentId':
          result.studentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ClubMemberDto extends ClubMemberDto {
  @override
  final String studentId;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String email;
  @override
  final String role;

  factory _$ClubMemberDto([void Function(ClubMemberDtoBuilder)? updates]) =>
      (new ClubMemberDtoBuilder()..update(updates))._build();

  _$ClubMemberDto._(
      {required this.studentId,
      required this.name,
      required this.surname,
      required this.email,
      required this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        studentId, r'ClubMemberDto', 'studentId');
    BuiltValueNullFieldError.checkNotNull(name, r'ClubMemberDto', 'name');
    BuiltValueNullFieldError.checkNotNull(surname, r'ClubMemberDto', 'surname');
    BuiltValueNullFieldError.checkNotNull(email, r'ClubMemberDto', 'email');
    BuiltValueNullFieldError.checkNotNull(role, r'ClubMemberDto', 'role');
  }

  @override
  ClubMemberDto rebuild(void Function(ClubMemberDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClubMemberDtoBuilder toBuilder() => new ClubMemberDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClubMemberDto &&
        studentId == other.studentId &&
        name == other.name &&
        surname == other.surname &&
        email == other.email &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, studentId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, surname.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClubMemberDto')
          ..add('studentId', studentId)
          ..add('name', name)
          ..add('surname', surname)
          ..add('email', email)
          ..add('role', role))
        .toString();
  }
}

class ClubMemberDtoBuilder
    implements Builder<ClubMemberDto, ClubMemberDtoBuilder> {
  _$ClubMemberDto? _$v;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  ClubMemberDtoBuilder();

  ClubMemberDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _studentId = $v.studentId;
      _name = $v.name;
      _surname = $v.surname;
      _email = $v.email;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClubMemberDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClubMemberDto;
  }

  @override
  void update(void Function(ClubMemberDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClubMemberDto build() => _build();

  _$ClubMemberDto _build() {
    final _$result = _$v ??
        new _$ClubMemberDto._(
          studentId: BuiltValueNullFieldError.checkNotNull(
              studentId, r'ClubMemberDto', 'studentId'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ClubMemberDto', 'name'),
          surname: BuiltValueNullFieldError.checkNotNull(
              surname, r'ClubMemberDto', 'surname'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'ClubMemberDto', 'email'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'ClubMemberDto', 'role'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
