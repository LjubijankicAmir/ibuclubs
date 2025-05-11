// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestState<S> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() processing,
    required TResult Function(RequestFailure failure) failed,
    required TResult Function(S result) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function()? processing,
    TResult? Function(RequestFailure failure)? failed,
    TResult? Function(S result)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? processing,
    TResult Function(RequestFailure failure)? failed,
    TResult Function(S result)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ready<S> value) ready,
    required TResult Function(Processing<S> value) processing,
    required TResult Function(Failed<S> value) failed,
    required TResult Function(Success<S> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ready<S> value)? ready,
    TResult? Function(Processing<S> value)? processing,
    TResult? Function(Failed<S> value)? failed,
    TResult? Function(Success<S> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ready<S> value)? ready,
    TResult Function(Processing<S> value)? processing,
    TResult Function(Failed<S> value)? failed,
    TResult Function(Success<S> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<S, $Res> {
  factory $RequestStateCopyWith(
          RequestState<S> value, $Res Function(RequestState<S>) then) =
      _$RequestStateCopyWithImpl<S, $Res, RequestState<S>>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<S, $Res, $Val extends RequestState<S>>
    implements $RequestStateCopyWith<S, $Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<S, $Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl<S> value, $Res Function(_$ReadyImpl<S>) then) =
      __$$ReadyImplCopyWithImpl<S, $Res>;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<S, $Res>
    extends _$RequestStateCopyWithImpl<S, $Res, _$ReadyImpl<S>>
    implements _$$ReadyImplCopyWith<S, $Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl<S> _value, $Res Function(_$ReadyImpl<S>) _then)
      : super(_value, _then);

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReadyImpl<S> implements Ready<S> {
  const _$ReadyImpl();

  @override
  String toString() {
    return 'RequestState<$S>.ready()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadyImpl<S>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() processing,
    required TResult Function(RequestFailure failure) failed,
    required TResult Function(S result) success,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function()? processing,
    TResult? Function(RequestFailure failure)? failed,
    TResult? Function(S result)? success,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? processing,
    TResult Function(RequestFailure failure)? failed,
    TResult Function(S result)? success,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ready<S> value) ready,
    required TResult Function(Processing<S> value) processing,
    required TResult Function(Failed<S> value) failed,
    required TResult Function(Success<S> value) success,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ready<S> value)? ready,
    TResult? Function(Processing<S> value)? processing,
    TResult? Function(Failed<S> value)? failed,
    TResult? Function(Success<S> value)? success,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ready<S> value)? ready,
    TResult Function(Processing<S> value)? processing,
    TResult Function(Failed<S> value)? failed,
    TResult Function(Success<S> value)? success,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready<S> implements RequestState<S> {
  const factory Ready() = _$ReadyImpl<S>;
}

/// @nodoc
abstract class _$$ProcessingImplCopyWith<S, $Res> {
  factory _$$ProcessingImplCopyWith(
          _$ProcessingImpl<S> value, $Res Function(_$ProcessingImpl<S>) then) =
      __$$ProcessingImplCopyWithImpl<S, $Res>;
}

/// @nodoc
class __$$ProcessingImplCopyWithImpl<S, $Res>
    extends _$RequestStateCopyWithImpl<S, $Res, _$ProcessingImpl<S>>
    implements _$$ProcessingImplCopyWith<S, $Res> {
  __$$ProcessingImplCopyWithImpl(
      _$ProcessingImpl<S> _value, $Res Function(_$ProcessingImpl<S>) _then)
      : super(_value, _then);

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessingImpl<S> implements Processing<S> {
  const _$ProcessingImpl();

  @override
  String toString() {
    return 'RequestState<$S>.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingImpl<S>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() processing,
    required TResult Function(RequestFailure failure) failed,
    required TResult Function(S result) success,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function()? processing,
    TResult? Function(RequestFailure failure)? failed,
    TResult? Function(S result)? success,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? processing,
    TResult Function(RequestFailure failure)? failed,
    TResult Function(S result)? success,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ready<S> value) ready,
    required TResult Function(Processing<S> value) processing,
    required TResult Function(Failed<S> value) failed,
    required TResult Function(Success<S> value) success,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ready<S> value)? ready,
    TResult? Function(Processing<S> value)? processing,
    TResult? Function(Failed<S> value)? failed,
    TResult? Function(Success<S> value)? success,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ready<S> value)? ready,
    TResult Function(Processing<S> value)? processing,
    TResult Function(Failed<S> value)? failed,
    TResult Function(Success<S> value)? success,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class Processing<S> implements RequestState<S> {
  const factory Processing() = _$ProcessingImpl<S>;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<S, $Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl<S> value, $Res Function(_$FailedImpl<S>) then) =
      __$$FailedImplCopyWithImpl<S, $Res>;
  @useResult
  $Res call({RequestFailure failure});

  $RequestFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<S, $Res>
    extends _$RequestStateCopyWithImpl<S, $Res, _$FailedImpl<S>>
    implements _$$FailedImplCopyWith<S, $Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl<S> _value, $Res Function(_$FailedImpl<S>) _then)
      : super(_value, _then);

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailedImpl<S>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RequestFailure,
    ));
  }

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestFailureCopyWith<$Res> get failure {
    return $RequestFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailedImpl<S> implements Failed<S> {
  const _$FailedImpl(this.failure);

  @override
  final RequestFailure failure;

  @override
  String toString() {
    return 'RequestState<$S>.failed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl<S> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<S, _$FailedImpl<S>> get copyWith =>
      __$$FailedImplCopyWithImpl<S, _$FailedImpl<S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() processing,
    required TResult Function(RequestFailure failure) failed,
    required TResult Function(S result) success,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function()? processing,
    TResult? Function(RequestFailure failure)? failed,
    TResult? Function(S result)? success,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? processing,
    TResult Function(RequestFailure failure)? failed,
    TResult Function(S result)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ready<S> value) ready,
    required TResult Function(Processing<S> value) processing,
    required TResult Function(Failed<S> value) failed,
    required TResult Function(Success<S> value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ready<S> value)? ready,
    TResult? Function(Processing<S> value)? processing,
    TResult? Function(Failed<S> value)? failed,
    TResult? Function(Success<S> value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ready<S> value)? ready,
    TResult Function(Processing<S> value)? processing,
    TResult Function(Failed<S> value)? failed,
    TResult Function(Success<S> value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed<S> implements RequestState<S> {
  const factory Failed(final RequestFailure failure) = _$FailedImpl<S>;

  RequestFailure get failure;

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<S, _$FailedImpl<S>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<S, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<S> value, $Res Function(_$SuccessImpl<S>) then) =
      __$$SuccessImplCopyWithImpl<S, $Res>;
  @useResult
  $Res call({S result});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<S, $Res>
    extends _$RequestStateCopyWithImpl<S, $Res, _$SuccessImpl<S>>
    implements _$$SuccessImplCopyWith<S, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<S> _value, $Res Function(_$SuccessImpl<S>) _then)
      : super(_value, _then);

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$SuccessImpl<S>(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<S> implements Success<S> {
  const _$SuccessImpl(this.result);

  @override
  final S result;

  @override
  String toString() {
    return 'RequestState<$S>.success(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<S> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<S, _$SuccessImpl<S>> get copyWith =>
      __$$SuccessImplCopyWithImpl<S, _$SuccessImpl<S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() processing,
    required TResult Function(RequestFailure failure) failed,
    required TResult Function(S result) success,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function()? processing,
    TResult? Function(RequestFailure failure)? failed,
    TResult? Function(S result)? success,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? processing,
    TResult Function(RequestFailure failure)? failed,
    TResult Function(S result)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ready<S> value) ready,
    required TResult Function(Processing<S> value) processing,
    required TResult Function(Failed<S> value) failed,
    required TResult Function(Success<S> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ready<S> value)? ready,
    TResult? Function(Processing<S> value)? processing,
    TResult? Function(Failed<S> value)? failed,
    TResult? Function(Success<S> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ready<S> value)? ready,
    TResult Function(Processing<S> value)? processing,
    TResult Function(Failed<S> value)? failed,
    TResult Function(Success<S> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<S> implements RequestState<S> {
  const factory Success(final S result) = _$SuccessImpl<S>;

  S get result;

  /// Create a copy of RequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<S, _$SuccessImpl<S>> get copyWith =>
      throw _privateConstructorUsedError;
}
