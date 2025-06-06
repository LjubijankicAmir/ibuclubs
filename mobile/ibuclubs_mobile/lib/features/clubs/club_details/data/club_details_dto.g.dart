// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_details_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClubDetailsDto> _$clubDetailsDtoSerializer =
    new _$ClubDetailsDtoSerializer();

class _$ClubDetailsDtoSerializer
    implements StructuredSerializer<ClubDetailsDto> {
  @override
  final Iterable<Type> types = const [ClubDetailsDto, _$ClubDetailsDto];
  @override
  final String wireName = 'ClubDetailsDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClubDetailsDto object,
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
      'membershipCount',
      serializers.serialize(object.membershipCount,
          specifiedType: const FullType(int)),
      'isEnrolled',
      serializers.serialize(object.isEnrolled,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  ClubDetailsDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClubDetailsDtoBuilder();

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
        case 'membershipCount':
          result.membershipCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isEnrolled':
          result.isEnrolled = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ClubDetailsDto extends ClubDetailsDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String socialMediaLink;
  @override
  final int membershipCount;
  @override
  final bool isEnrolled;

  factory _$ClubDetailsDto([void Function(ClubDetailsDtoBuilder)? updates]) =>
      (new ClubDetailsDtoBuilder()..update(updates))._build();

  _$ClubDetailsDto._(
      {required this.id,
      required this.name,
      required this.description,
      required this.socialMediaLink,
      required this.membershipCount,
      required this.isEnrolled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ClubDetailsDto', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'ClubDetailsDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'ClubDetailsDto', 'description');
    BuiltValueNullFieldError.checkNotNull(
        socialMediaLink, r'ClubDetailsDto', 'socialMediaLink');
    BuiltValueNullFieldError.checkNotNull(
        membershipCount, r'ClubDetailsDto', 'membershipCount');
    BuiltValueNullFieldError.checkNotNull(
        isEnrolled, r'ClubDetailsDto', 'isEnrolled');
  }

  @override
  ClubDetailsDto rebuild(void Function(ClubDetailsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClubDetailsDtoBuilder toBuilder() =>
      new ClubDetailsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClubDetailsDto &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        socialMediaLink == other.socialMediaLink &&
        membershipCount == other.membershipCount &&
        isEnrolled == other.isEnrolled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, socialMediaLink.hashCode);
    _$hash = $jc(_$hash, membershipCount.hashCode);
    _$hash = $jc(_$hash, isEnrolled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClubDetailsDto')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('socialMediaLink', socialMediaLink)
          ..add('membershipCount', membershipCount)
          ..add('isEnrolled', isEnrolled))
        .toString();
  }
}

class ClubDetailsDtoBuilder
    implements Builder<ClubDetailsDto, ClubDetailsDtoBuilder> {
  _$ClubDetailsDto? _$v;

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

  int? _membershipCount;
  int? get membershipCount => _$this._membershipCount;
  set membershipCount(int? membershipCount) =>
      _$this._membershipCount = membershipCount;

  bool? _isEnrolled;
  bool? get isEnrolled => _$this._isEnrolled;
  set isEnrolled(bool? isEnrolled) => _$this._isEnrolled = isEnrolled;

  ClubDetailsDtoBuilder();

  ClubDetailsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _socialMediaLink = $v.socialMediaLink;
      _membershipCount = $v.membershipCount;
      _isEnrolled = $v.isEnrolled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClubDetailsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClubDetailsDto;
  }

  @override
  void update(void Function(ClubDetailsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClubDetailsDto build() => _build();

  _$ClubDetailsDto _build() {
    final _$result = _$v ??
        new _$ClubDetailsDto._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ClubDetailsDto', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ClubDetailsDto', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'ClubDetailsDto', 'description'),
          socialMediaLink: BuiltValueNullFieldError.checkNotNull(
              socialMediaLink, r'ClubDetailsDto', 'socialMediaLink'),
          membershipCount: BuiltValueNullFieldError.checkNotNull(
              membershipCount, r'ClubDetailsDto', 'membershipCount'),
          isEnrolled: BuiltValueNullFieldError.checkNotNull(
              isEnrolled, r'ClubDetailsDto', 'isEnrolled'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
