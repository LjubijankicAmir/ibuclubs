// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActivityDto> _$activityDtoSerializer = new _$ActivityDtoSerializer();

class _$ActivityDtoSerializer implements StructuredSerializer<ActivityDto> {
  @override
  final Iterable<Type> types = const [ActivityDto, _$ActivityDto];
  @override
  final String wireName = 'ActivityDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, ActivityDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'activityId',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
      'isEnrolled',
      serializers.serialize(object.isEnrolled,
          specifiedType: const FullType(bool)),
      'activityEnrollments',
      serializers.serialize(object.enrollments,
          specifiedType:
              const FullType(BuiltList, const [const FullType(EnrollmentDto)])),
    ];

    return result;
  }

  @override
  ActivityDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActivityDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'activityId':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
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
        case 'isEnrolled':
          result.isEnrolled = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'activityEnrollments':
          result.enrollments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EnrollmentDto)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ActivityDto extends ActivityDto {
  @override
  final String id;
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
  @override
  final bool isEnrolled;
  @override
  final BuiltList<EnrollmentDto> enrollments;

  factory _$ActivityDto([void Function(ActivityDtoBuilder)? updates]) =>
      (new ActivityDtoBuilder()..update(updates))._build();

  _$ActivityDto._(
      {required this.id,
      required this.clubId,
      required this.name,
      required this.description,
      required this.date,
      required this.time,
      required this.activityPoints,
      required this.maxParticipants,
      required this.isEnrolled,
      required this.enrollments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ActivityDto', 'id');
    BuiltValueNullFieldError.checkNotNull(clubId, r'ActivityDto', 'clubId');
    BuiltValueNullFieldError.checkNotNull(name, r'ActivityDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description, r'ActivityDto', 'description');
    BuiltValueNullFieldError.checkNotNull(date, r'ActivityDto', 'date');
    BuiltValueNullFieldError.checkNotNull(time, r'ActivityDto', 'time');
    BuiltValueNullFieldError.checkNotNull(
        activityPoints, r'ActivityDto', 'activityPoints');
    BuiltValueNullFieldError.checkNotNull(
        maxParticipants, r'ActivityDto', 'maxParticipants');
    BuiltValueNullFieldError.checkNotNull(
        isEnrolled, r'ActivityDto', 'isEnrolled');
    BuiltValueNullFieldError.checkNotNull(
        enrollments, r'ActivityDto', 'enrollments');
  }

  @override
  ActivityDto rebuild(void Function(ActivityDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityDtoBuilder toBuilder() => new ActivityDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityDto &&
        id == other.id &&
        clubId == other.clubId &&
        name == other.name &&
        description == other.description &&
        date == other.date &&
        time == other.time &&
        activityPoints == other.activityPoints &&
        maxParticipants == other.maxParticipants &&
        isEnrolled == other.isEnrolled &&
        enrollments == other.enrollments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, clubId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, activityPoints.hashCode);
    _$hash = $jc(_$hash, maxParticipants.hashCode);
    _$hash = $jc(_$hash, isEnrolled.hashCode);
    _$hash = $jc(_$hash, enrollments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivityDto')
          ..add('id', id)
          ..add('clubId', clubId)
          ..add('name', name)
          ..add('description', description)
          ..add('date', date)
          ..add('time', time)
          ..add('activityPoints', activityPoints)
          ..add('maxParticipants', maxParticipants)
          ..add('isEnrolled', isEnrolled)
          ..add('enrollments', enrollments))
        .toString();
  }
}

class ActivityDtoBuilder implements Builder<ActivityDto, ActivityDtoBuilder> {
  _$ActivityDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  bool? _isEnrolled;
  bool? get isEnrolled => _$this._isEnrolled;
  set isEnrolled(bool? isEnrolled) => _$this._isEnrolled = isEnrolled;

  ListBuilder<EnrollmentDto>? _enrollments;
  ListBuilder<EnrollmentDto> get enrollments =>
      _$this._enrollments ??= new ListBuilder<EnrollmentDto>();
  set enrollments(ListBuilder<EnrollmentDto>? enrollments) =>
      _$this._enrollments = enrollments;

  ActivityDtoBuilder();

  ActivityDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _clubId = $v.clubId;
      _name = $v.name;
      _description = $v.description;
      _date = $v.date;
      _time = $v.time;
      _activityPoints = $v.activityPoints;
      _maxParticipants = $v.maxParticipants;
      _isEnrolled = $v.isEnrolled;
      _enrollments = $v.enrollments.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivityDto;
  }

  @override
  void update(void Function(ActivityDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityDto build() => _build();

  _$ActivityDto _build() {
    _$ActivityDto _$result;
    try {
      _$result = _$v ??
          new _$ActivityDto._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ActivityDto', 'id'),
            clubId: BuiltValueNullFieldError.checkNotNull(
                clubId, r'ActivityDto', 'clubId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ActivityDto', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'ActivityDto', 'description'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'ActivityDto', 'date'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'ActivityDto', 'time'),
            activityPoints: BuiltValueNullFieldError.checkNotNull(
                activityPoints, r'ActivityDto', 'activityPoints'),
            maxParticipants: BuiltValueNullFieldError.checkNotNull(
                maxParticipants, r'ActivityDto', 'maxParticipants'),
            isEnrolled: BuiltValueNullFieldError.checkNotNull(
                isEnrolled, r'ActivityDto', 'isEnrolled'),
            enrollments: enrollments.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enrollments';
        enrollments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActivityDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
