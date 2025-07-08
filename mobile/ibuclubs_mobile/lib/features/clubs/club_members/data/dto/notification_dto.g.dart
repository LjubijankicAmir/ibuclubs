// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationDto> _$notificationDtoSerializer =
    new _$NotificationDtoSerializer();

class _$NotificationDtoSerializer
    implements StructuredSerializer<NotificationDto> {
  @override
  final Iterable<Type> types = const [NotificationDto, _$NotificationDto];
  @override
  final String wireName = 'NotificationDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, NotificationDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  NotificationDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationDto extends NotificationDto {
  @override
  final String title;
  @override
  final String description;

  factory _$NotificationDto([void Function(NotificationDtoBuilder)? updates]) =>
      (new NotificationDtoBuilder()..update(updates))._build();

  _$NotificationDto._({required this.title, required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'NotificationDto', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'NotificationDto', 'description');
  }

  @override
  NotificationDto rebuild(void Function(NotificationDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationDtoBuilder toBuilder() =>
      new NotificationDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationDto &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationDto')
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class NotificationDtoBuilder
    implements Builder<NotificationDto, NotificationDtoBuilder> {
  _$NotificationDto? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  NotificationDtoBuilder();

  NotificationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationDto;
  }

  @override
  void update(void Function(NotificationDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationDto build() => _build();

  _$NotificationDto _build() {
    final _$result = _$v ??
        new _$NotificationDto._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'NotificationDto', 'title'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'NotificationDto', 'description'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
