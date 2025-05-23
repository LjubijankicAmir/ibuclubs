// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FieldState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() touched,
    required TResult Function() dirty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? touched,
    TResult? Function()? dirty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? touched,
    TResult Function()? dirty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pure value) pure,
    required TResult Function(Touched value) touched,
    required TResult Function(Dirty value) dirty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Pure value)? pure,
    TResult? Function(Touched value)? touched,
    TResult? Function(Dirty value)? dirty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pure value)? pure,
    TResult Function(Touched value)? touched,
    TResult Function(Dirty value)? dirty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldStateCopyWith<$Res> {
  factory $FieldStateCopyWith(
          FieldState value, $Res Function(FieldState) then) =
      _$FieldStateCopyWithImpl<$Res, FieldState>;
}

/// @nodoc
class _$FieldStateCopyWithImpl<$Res, $Val extends FieldState>
    implements $FieldStateCopyWith<$Res> {
  _$FieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PureImplCopyWith<$Res> {
  factory _$$PureImplCopyWith(
          _$PureImpl value, $Res Function(_$PureImpl) then) =
      __$$PureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PureImplCopyWithImpl<$Res>
    extends _$FieldStateCopyWithImpl<$Res, _$PureImpl>
    implements _$$PureImplCopyWith<$Res> {
  __$$PureImplCopyWithImpl(_$PureImpl _value, $Res Function(_$PureImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PureImpl implements Pure {
  const _$PureImpl();

  @override
  String toString() {
    return 'FieldState.pure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() touched,
    required TResult Function() dirty,
  }) {
    return pure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? touched,
    TResult? Function()? dirty,
  }) {
    return pure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? touched,
    TResult Function()? dirty,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pure value) pure,
    required TResult Function(Touched value) touched,
    required TResult Function(Dirty value) dirty,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Pure value)? pure,
    TResult? Function(Touched value)? touched,
    TResult? Function(Dirty value)? dirty,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pure value)? pure,
    TResult Function(Touched value)? touched,
    TResult Function(Dirty value)? dirty,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class Pure implements FieldState {
  const factory Pure() = _$PureImpl;
}

/// @nodoc
abstract class _$$TouchedImplCopyWith<$Res> {
  factory _$$TouchedImplCopyWith(
          _$TouchedImpl value, $Res Function(_$TouchedImpl) then) =
      __$$TouchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TouchedImplCopyWithImpl<$Res>
    extends _$FieldStateCopyWithImpl<$Res, _$TouchedImpl>
    implements _$$TouchedImplCopyWith<$Res> {
  __$$TouchedImplCopyWithImpl(
      _$TouchedImpl _value, $Res Function(_$TouchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TouchedImpl implements Touched {
  const _$TouchedImpl();

  @override
  String toString() {
    return 'FieldState.touched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TouchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() touched,
    required TResult Function() dirty,
  }) {
    return touched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? touched,
    TResult? Function()? dirty,
  }) {
    return touched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? touched,
    TResult Function()? dirty,
    required TResult orElse(),
  }) {
    if (touched != null) {
      return touched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pure value) pure,
    required TResult Function(Touched value) touched,
    required TResult Function(Dirty value) dirty,
  }) {
    return touched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Pure value)? pure,
    TResult? Function(Touched value)? touched,
    TResult? Function(Dirty value)? dirty,
  }) {
    return touched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pure value)? pure,
    TResult Function(Touched value)? touched,
    TResult Function(Dirty value)? dirty,
    required TResult orElse(),
  }) {
    if (touched != null) {
      return touched(this);
    }
    return orElse();
  }
}

abstract class Touched implements FieldState {
  const factory Touched() = _$TouchedImpl;
}

/// @nodoc
abstract class _$$DirtyImplCopyWith<$Res> {
  factory _$$DirtyImplCopyWith(
          _$DirtyImpl value, $Res Function(_$DirtyImpl) then) =
      __$$DirtyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DirtyImplCopyWithImpl<$Res>
    extends _$FieldStateCopyWithImpl<$Res, _$DirtyImpl>
    implements _$$DirtyImplCopyWith<$Res> {
  __$$DirtyImplCopyWithImpl(
      _$DirtyImpl _value, $Res Function(_$DirtyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DirtyImpl implements Dirty {
  const _$DirtyImpl();

  @override
  String toString() {
    return 'FieldState.dirty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DirtyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pure,
    required TResult Function() touched,
    required TResult Function() dirty,
  }) {
    return dirty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pure,
    TResult? Function()? touched,
    TResult? Function()? dirty,
  }) {
    return dirty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pure,
    TResult Function()? touched,
    TResult Function()? dirty,
    required TResult orElse(),
  }) {
    if (dirty != null) {
      return dirty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pure value) pure,
    required TResult Function(Touched value) touched,
    required TResult Function(Dirty value) dirty,
  }) {
    return dirty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Pure value)? pure,
    TResult? Function(Touched value)? touched,
    TResult? Function(Dirty value)? dirty,
  }) {
    return dirty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pure value)? pure,
    TResult Function(Touched value)? touched,
    TResult Function(Dirty value)? dirty,
    required TResult orElse(),
  }) {
    if (dirty != null) {
      return dirty(this);
    }
    return orElse();
  }
}

abstract class Dirty implements FieldState {
  const factory Dirty() = _$DirtyImpl;
}
