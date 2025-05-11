// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JwtFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noJwt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noJwt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noJwt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoJwt value) noJwt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoJwt value)? noJwt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoJwt value)? noJwt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtFailureCopyWith<$Res> {
  factory $JwtFailureCopyWith(
          JwtFailure value, $Res Function(JwtFailure) then) =
      _$JwtFailureCopyWithImpl<$Res, JwtFailure>;
}

/// @nodoc
class _$JwtFailureCopyWithImpl<$Res, $Val extends JwtFailure>
    implements $JwtFailureCopyWith<$Res> {
  _$JwtFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JwtFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoJwtImplCopyWith<$Res> {
  factory _$$NoJwtImplCopyWith(
          _$NoJwtImpl value, $Res Function(_$NoJwtImpl) then) =
      __$$NoJwtImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoJwtImplCopyWithImpl<$Res>
    extends _$JwtFailureCopyWithImpl<$Res, _$NoJwtImpl>
    implements _$$NoJwtImplCopyWith<$Res> {
  __$$NoJwtImplCopyWithImpl(
      _$NoJwtImpl _value, $Res Function(_$NoJwtImpl) _then)
      : super(_value, _then);

  /// Create a copy of JwtFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoJwtImpl implements NoJwt {
  const _$NoJwtImpl();

  @override
  String toString() {
    return 'JwtFailure.noJwt()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoJwtImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noJwt,
  }) {
    return noJwt();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noJwt,
  }) {
    return noJwt?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noJwt,
    required TResult orElse(),
  }) {
    if (noJwt != null) {
      return noJwt();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoJwt value) noJwt,
  }) {
    return noJwt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoJwt value)? noJwt,
  }) {
    return noJwt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoJwt value)? noJwt,
    required TResult orElse(),
  }) {
    if (noJwt != null) {
      return noJwt(this);
    }
    return orElse();
  }
}

abstract class NoJwt implements JwtFailure {
  const factory NoJwt() = _$NoJwtImpl;
}
