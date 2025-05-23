// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFormField<T extends ValueObject<Object>> {
  T get input => throw _privateConstructorUsedError;
  FieldState get fieldState => throw _privateConstructorUsedError;

  /// Create a copy of ValueFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueFormFieldCopyWith<T, ValueFormField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFormFieldCopyWith<T extends ValueObject<Object>, $Res> {
  factory $ValueFormFieldCopyWith(
          ValueFormField<T> value, $Res Function(ValueFormField<T>) then) =
      _$ValueFormFieldCopyWithImpl<T, $Res, ValueFormField<T>>;
  @useResult
  $Res call({T input, FieldState fieldState});

  $FieldStateCopyWith<$Res> get fieldState;
}

/// @nodoc
class _$ValueFormFieldCopyWithImpl<T extends ValueObject<Object>, $Res,
        $Val extends ValueFormField<T>>
    implements $ValueFormFieldCopyWith<T, $Res> {
  _$ValueFormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? fieldState = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as T,
      fieldState: null == fieldState
          ? _value.fieldState
          : fieldState // ignore: cast_nullable_to_non_nullable
              as FieldState,
    ) as $Val);
  }

  /// Create a copy of ValueFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FieldStateCopyWith<$Res> get fieldState {
    return $FieldStateCopyWith<$Res>(_value.fieldState, (value) {
      return _then(_value.copyWith(fieldState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValueFormFieldImplCopyWith<T extends ValueObject<Object>,
    $Res> implements $ValueFormFieldCopyWith<T, $Res> {
  factory _$$ValueFormFieldImplCopyWith(_$ValueFormFieldImpl<T> value,
          $Res Function(_$ValueFormFieldImpl<T>) then) =
      __$$ValueFormFieldImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T input, FieldState fieldState});

  @override
  $FieldStateCopyWith<$Res> get fieldState;
}

/// @nodoc
class __$$ValueFormFieldImplCopyWithImpl<T extends ValueObject<Object>, $Res>
    extends _$ValueFormFieldCopyWithImpl<T, $Res, _$ValueFormFieldImpl<T>>
    implements _$$ValueFormFieldImplCopyWith<T, $Res> {
  __$$ValueFormFieldImplCopyWithImpl(_$ValueFormFieldImpl<T> _value,
      $Res Function(_$ValueFormFieldImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? fieldState = null,
  }) {
    return _then(_$ValueFormFieldImpl<T>(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as T,
      null == fieldState
          ? _value.fieldState
          : fieldState // ignore: cast_nullable_to_non_nullable
              as FieldState,
    ));
  }
}

/// @nodoc

class _$ValueFormFieldImpl<T extends ValueObject<Object>>
    extends _ValueFormField<T> {
  const _$ValueFormFieldImpl(this.input, this.fieldState) : super._();

  @override
  final T input;
  @override
  final FieldState fieldState;

  @override
  String toString() {
    return 'ValueFormField<$T>(input: $input, fieldState: $fieldState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFormFieldImpl<T> &&
            const DeepCollectionEquality().equals(other.input, input) &&
            (identical(other.fieldState, fieldState) ||
                other.fieldState == fieldState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(input), fieldState);

  /// Create a copy of ValueFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFormFieldImplCopyWith<T, _$ValueFormFieldImpl<T>> get copyWith =>
      __$$ValueFormFieldImplCopyWithImpl<T, _$ValueFormFieldImpl<T>>(
          this, _$identity);
}

abstract class _ValueFormField<T extends ValueObject<Object>>
    extends ValueFormField<T> {
  const factory _ValueFormField(final T input, final FieldState fieldState) =
      _$ValueFormFieldImpl<T>;
  const _ValueFormField._() : super._();

  @override
  T get input;
  @override
  FieldState get fieldState;

  /// Create a copy of ValueFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueFormFieldImplCopyWith<T, _$ValueFormFieldImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
