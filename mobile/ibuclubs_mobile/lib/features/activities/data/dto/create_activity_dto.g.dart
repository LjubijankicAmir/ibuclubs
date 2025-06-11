// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_activity_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateActivityDto> _$createActivityDtoSerializer =
    new _$CreateActivityDtoSerializer();

class _$CreateActivityDtoSerializer
    implements StructuredSerializer<CreateActivityDto> {
  @override
  final Iterable<Type> types = const [CreateActivityDto, _$CreateActivityDto];
  @override
  final String wireName = 'CreateActivityDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, CreateActivityDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'clubId',
      serializers.serialize(object.clubId,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'activityPoints',
      serializers.serialize(object.activityPoints,
          specifiedType: const FullType(int)),
      'maxParticipants',
      serializers.serialize(object.maxParticipants,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CreateActivityDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateActivityDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'clubId':
          result.clubId = serializers.deserialize(value,
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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'activityPoints':
          result.activityPoints = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'maxParticipants':
          result.maxParticipants = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateActivityDto extends CreateActivityDto {
  @override
  final String clubId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String date;
  @override
  final String time;
  @override
  final int activityPoints;
  @override
  final int maxParticipants;

  factory _$CreateActivityDto(
          [void Function(CreateActivityDtoBuilder)? updates]) =>
      (new CreateActivityDtoBuilder()..update(updates))._build();

  _$CreateActivityDto._(
      {required this.clubId,
      required this.name,
      required this.description,
      required this.date,
      required this.time,
      required this.activityPoints,
      required this.maxParticipants})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clubId, r'CreateActivityDto', 'clubId');
    BuiltValueNullFieldError.checkNotNull(name, r'CreateActivityDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'CreateActivityDto', 'description');
    BuiltValueNullFieldError.checkNotNull(date, r'CreateActivityDto', 'date');
    BuiltValueNullFieldError.checkNotNull(time, r'CreateActivityDto', 'time');
    BuiltValueNullFieldError.checkNotNull(
        activityPoints, r'CreateActivityDto', 'activityPoints');
    BuiltValueNullFieldError.checkNotNull(
        maxParticipants, r'CreateActivityDto', 'maxParticipants');
  }

  @override
  CreateActivityDto rebuild(void Function(CreateActivityDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateActivityDtoBuilder toBuilder() =>
      new CreateActivityDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateActivityDto &&
        clubId == other.clubId &&
        name == other.name &&
        description == other.description &&
        date == other.date &&
        time == other.time &&
        activityPoints == other.activityPoints &&
        maxParticipants == other.maxParticipants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clubId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, activityPoints.hashCode);
    _$hash = $jc(_$hash, maxParticipants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateActivityDto')
          ..add('clubId', clubId)
          ..add('name', name)
          ..add('description', description)
          ..add('date', date)
          ..add('time', time)
          ..add('activityPoints', activityPoints)
          ..add('maxParticipants', maxParticipants))
        .toString();
  }
}

class CreateActivityDtoBuilder
    implements Builder<CreateActivityDto, CreateActivityDtoBuilder> {
  _$CreateActivityDto? _$v;

  String? _clubId;
  String? get clubId => _$this._clubId;
  set clubId(String? clubId) => _$this._clubId = clubId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  int? _activityPoints;
  int? get activityPoints => _$this._activityPoints;
  set activityPoints(int? activityPoints) =>
      _$this._activityPoints = activityPoints;

  int? _maxParticipants;
  int? get maxParticipants => _$this._maxParticipants;
  set maxParticipants(int? maxParticipants) =>
      _$this._maxParticipants = maxParticipants;

  CreateActivityDtoBuilder();

  CreateActivityDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clubId = $v.clubId;
      _name = $v.name;
      _description = $v.description;
      _date = $v.date;
      _time = $v.time;
      _activityPoints = $v.activityPoints;
      _maxParticipants = $v.maxParticipants;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateActivityDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateActivityDto;
  }

  @override
  void update(void Function(CreateActivityDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateActivityDto build() => _build();

  _$CreateActivityDto _build() {
    final _$result = _$v ??
        new _$CreateActivityDto._(
          clubId: BuiltValueNullFieldError.checkNotNull(
              clubId, r'CreateActivityDto', 'clubId'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CreateActivityDto', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'CreateActivityDto', 'description'),
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'CreateActivityDto', 'date'),
          time: BuiltValueNullFieldError.checkNotNull(
              time, r'CreateActivityDto', 'time'),
          activityPoints: BuiltValueNullFieldError.checkNotNull(
              activityPoints, r'CreateActivityDto', 'activityPoints'),
          maxParticipants: BuiltValueNullFieldError.checkNotNull(
              maxParticipants, r'CreateActivityDto', 'maxParticipants'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
