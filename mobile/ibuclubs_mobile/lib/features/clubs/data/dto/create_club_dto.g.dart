// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_club_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateClubDto> _$createClubDtoSerializer =
    new _$CreateClubDtoSerializer();

class _$CreateClubDtoSerializer implements StructuredSerializer<CreateClubDto> {
  @override
  final Iterable<Type> types = const [CreateClubDto, _$CreateClubDto];
  @override
  final String wireName = 'CreateClubDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, CreateClubDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.socialMediaLink;
    if (value != null) {
      result
        ..add('socialMediaLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CreateClubDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateClubDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'socialMediaLink':
          result.socialMediaLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateClubDto extends CreateClubDto {
  @override
  final String name;
  @override
  final String description;
  @override
  final String? socialMediaLink;

  factory _$CreateClubDto([void Function(CreateClubDtoBuilder)? updates]) =>
      (new CreateClubDtoBuilder()..update(updates))._build();

  _$CreateClubDto._(
      {required this.name, required this.description, this.socialMediaLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'CreateClubDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'CreateClubDto', 'description');
  }

  @override
  CreateClubDto rebuild(void Function(CreateClubDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateClubDtoBuilder toBuilder() => new CreateClubDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateClubDto &&
        name == other.name &&
        description == other.description &&
        socialMediaLink == other.socialMediaLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, socialMediaLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateClubDto')
          ..add('name', name)
          ..add('description', description)
          ..add('socialMediaLink', socialMediaLink))
        .toString();
  }
}

class CreateClubDtoBuilder
    implements Builder<CreateClubDto, CreateClubDtoBuilder> {
  _$CreateClubDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _socialMediaLink;
  String? get socialMediaLink => _$this._socialMediaLink;
  set socialMediaLink(String? socialMediaLink) =>
      _$this._socialMediaLink = socialMediaLink;

  CreateClubDtoBuilder();

  CreateClubDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _socialMediaLink = $v.socialMediaLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateClubDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateClubDto;
  }

  @override
  void update(void Function(CreateClubDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateClubDto build() => _build();

  _$CreateClubDto _build() {
    final _$result = _$v ??
        new _$CreateClubDto._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CreateClubDto', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'CreateClubDto', 'description'),
          socialMediaLink: socialMediaLink,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
