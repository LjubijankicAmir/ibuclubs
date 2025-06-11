// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrollment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnrollmentDto> _$enrollmentDtoSerializer =
    new _$EnrollmentDtoSerializer();

class _$EnrollmentDtoSerializer implements StructuredSerializer<EnrollmentDto> {
  @override
  final Iterable<Type> types = const [EnrollmentDto, _$EnrollmentDto];
  @override
  final String wireName = 'EnrollmentDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnrollmentDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'studentId',
      serializers.serialize(object.studentId,
          specifiedType: const FullType(String)),
      'activityId',
      serializers.serialize(object.activityId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  EnrollmentDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnrollmentDtoBuilder();

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
        case 'activityId':
          result.activityId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EnrollmentDto extends EnrollmentDto {
  @override
  final String studentId;
  @override
  final String activityId;

  factory _$EnrollmentDto([void Function(EnrollmentDtoBuilder)? updates]) =>
      (new EnrollmentDtoBuilder()..update(updates))._build();

  _$EnrollmentDto._({required this.studentId, required this.activityId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        studentId, r'EnrollmentDto', 'studentId');
    BuiltValueNullFieldError.checkNotNull(
        activityId, r'EnrollmentDto', 'activityId');
  }

  @override
  EnrollmentDto rebuild(void Function(EnrollmentDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnrollmentDtoBuilder toBuilder() => new EnrollmentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnrollmentDto &&
        studentId == other.studentId &&
        activityId == other.activityId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, studentId.hashCode);
    _$hash = $jc(_$hash, activityId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnrollmentDto')
          ..add('studentId', studentId)
          ..add('activityId', activityId))
        .toString();
  }
}

class EnrollmentDtoBuilder
    implements Builder<EnrollmentDto, EnrollmentDtoBuilder> {
  _$EnrollmentDto? _$v;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  String? _activityId;
  String? get activityId => _$this._activityId;
  set activityId(String? activityId) => _$this._activityId = activityId;

  EnrollmentDtoBuilder();

  EnrollmentDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _studentId = $v.studentId;
      _activityId = $v.activityId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnrollmentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnrollmentDto;
  }

  @override
  void update(void Function(EnrollmentDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnrollmentDto build() => _build();

  _$EnrollmentDto _build() {
    final _$result = _$v ??
        new _$EnrollmentDto._(
          studentId: BuiltValueNullFieldError.checkNotNull(
              studentId, r'EnrollmentDto', 'studentId'),
          activityId: BuiltValueNullFieldError.checkNotNull(
              activityId, r'EnrollmentDto', 'activityId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
