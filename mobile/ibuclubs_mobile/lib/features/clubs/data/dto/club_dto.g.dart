// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClubDto> _$clubDtoSerializer = new _$ClubDtoSerializer();

class _$ClubDtoSerializer implements StructuredSerializer<ClubDto> {
  @override
  final Iterable<Type> types = const [ClubDto, _$ClubDto];
  @override
  final String wireName = 'ClubDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClubDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'clubId',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'socialMediaLink',
      serializers.serialize(object.socialMediaLink,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ClubDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClubDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'clubId':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
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
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ClubDto extends ClubDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String socialMediaLink;

  factory _$ClubDto([void Function(ClubDtoBuilder)? updates]) =>
      (new ClubDtoBuilder()..update(updates))._build();

  _$ClubDto._(
      {required this.id,
      required this.name,
      required this.description,
      required this.socialMediaLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ClubDto', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'ClubDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'ClubDto', 'description');
    BuiltValueNullFieldError.checkNotNull(
        socialMediaLink, r'ClubDto', 'socialMediaLink');
  }

  @override
  ClubDto rebuild(void Function(ClubDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClubDtoBuilder toBuilder() => new ClubDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClubDto &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        socialMediaLink == other.socialMediaLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, socialMediaLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClubDto')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('socialMediaLink', socialMediaLink))
        .toString();
  }
}

class ClubDtoBuilder implements Builder<ClubDto, ClubDtoBuilder> {
  _$ClubDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  ClubDtoBuilder();

  ClubDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _socialMediaLink = $v.socialMediaLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClubDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClubDto;
  }

  @override
  void update(void Function(ClubDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClubDto build() => _build();

  _$ClubDto _build() {
    final _$result = _$v ??
        new _$ClubDto._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'ClubDto', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'ClubDto', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'ClubDto', 'description'),
          socialMediaLink: BuiltValueNullFieldError.checkNotNull(
              socialMediaLink, r'ClubDto', 'socialMediaLink'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
