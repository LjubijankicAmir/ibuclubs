// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MembershipDto> _$membershipDtoSerializer =
    new _$MembershipDtoSerializer();

class _$MembershipDtoSerializer implements StructuredSerializer<MembershipDto> {
  @override
  final Iterable<Type> types = const [MembershipDto, _$MembershipDto];
  @override
  final String wireName = 'MembershipDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, MembershipDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'club',
      serializers.serialize(object.club,
          specifiedType: const FullType(ClubDto)),
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MembershipDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MembershipDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'club':
          result.club.replace(serializers.deserialize(value,
              specifiedType: const FullType(ClubDto))! as ClubDto);
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

class _$MembershipDto extends MembershipDto {
  @override
  final ClubDto club;
  @override
  final String role;

  factory _$MembershipDto([void Function(MembershipDtoBuilder)? updates]) =>
      (new MembershipDtoBuilder()..update(updates))._build();

  _$MembershipDto._({required this.club, required this.role}) : super._() {
    BuiltValueNullFieldError.checkNotNull(club, r'MembershipDto', 'club');
    BuiltValueNullFieldError.checkNotNull(role, r'MembershipDto', 'role');
  }

  @override
  MembershipDto rebuild(void Function(MembershipDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MembershipDtoBuilder toBuilder() => new MembershipDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MembershipDto && club == other.club && role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, club.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MembershipDto')
          ..add('club', club)
          ..add('role', role))
        .toString();
  }
}

class MembershipDtoBuilder
    implements Builder<MembershipDto, MembershipDtoBuilder> {
  _$MembershipDto? _$v;

  ClubDtoBuilder? _club;
  ClubDtoBuilder get club => _$this._club ??= new ClubDtoBuilder();
  set club(ClubDtoBuilder? club) => _$this._club = club;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  MembershipDtoBuilder();

  MembershipDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _club = $v.club.toBuilder();
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MembershipDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MembershipDto;
  }

  @override
  void update(void Function(MembershipDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MembershipDto build() => _build();

  _$MembershipDto _build() {
    _$MembershipDto _$result;
    try {
      _$result = _$v ??
          new _$MembershipDto._(
            club: club.build(),
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'MembershipDto', 'role'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'club';
        club.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MembershipDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
