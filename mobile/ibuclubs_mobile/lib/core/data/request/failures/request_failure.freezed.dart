// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(ErrorModel error) badRequest,
    required TResult Function() unauthorized,
    required TResult Function() jwtExpired,
    required TResult Function() serverError,
    required TResult Function() unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(ErrorModel error)? badRequest,
    TResult? Function()? unauthorized,
    TResult? Function()? jwtExpired,
    TResult? Function()? serverError,
    TResult? Function()? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(ErrorModel error)? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? jwtExpired,
    TResult Function()? serverError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(JwtExpired value) jwtExpired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(JwtExpired value)? jwtExpired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(JwtExpired value)? jwtExpired,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFailureCopyWith<$Res> {
  factory $RequestFailureCopyWith(
          RequestFailure value, $Res Function(RequestFailure) then) =
      _$RequestFailureCopyWithImpl<$Res, RequestFailure>;
}

/// @nodoc
class _$RequestFailureCopyWithImpl<$Res, $Val extends RequestFailure>
    implements $RequestFailureCopyWith<$Res> {
  _$RequestFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'RequestFailure.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(ErrorModel error) badRequest,
    required TResult Function() unauthorized,
    required TResult Function() jwtExpired,
    required TResult Function() serverError,
    required TResult Function() unexpectedError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(ErrorModel error)? badRequest,
    TResult? Function()? unauthorized,
    TResult? Function()? jwtExpired,
    TResult? Function()? serverError,
    TResult? Function()? unexpectedError,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(ErrorModel error)? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? jwtExpired,
    TResult Function()? serverError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(JwtExpired value) jwtExpired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(JwtExpired value)? jwtExpired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(JwtExpired value)? jwtExpired,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements RequestFailure {
  const factory NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorModel error});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BadRequestImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl implements BadRequest {
  const _$BadRequestImpl(this.error);

  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'RequestFailure.badRequest(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of RequestFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(ErrorModel error) badRequest,
    required TResult Function() unauthorized,
    required TResult Function() jwtExpired,
    required TResult Function() serverError,
    required TResult Function() unexpectedError,
  }) {
    return badRequest(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(ErrorModel error)? badRequest,
    TResult? Function()? unauthorized,
    TResult? Function()? jwtExpired,
    TResult? Function()? serverError,
    TResult? Function()? unexpectedError,
  }) {
    return badRequest?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(ErrorModel error)? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? jwtExpired,
    TResult Function()? serverError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(JwtExpired value) jwtExpired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(JwtExpired value)? jwtExpired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(JwtExpired value)? jwtExpired,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements RequestFailure {
  const factory BadRequest(final ErrorModel error) = _$BadRequestImpl;

  ErrorModel get error;

  /// Create a copy of RequestFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthorizedImpl implements Unauthorized {
  const _$UnauthorizedImpl();

  @override
  String toString() {
    return 'RequestFailure.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(ErrorModel error) badRequest,
    required TResult Function() unauthorized,
    required TResult Function() jwtExpired,
    required TResult Function() serverError,
    required TResult Function() unexpectedError,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(ErrorModel error)? badRequest,
    TResult? Function()? unauthorized,
    TResult? Function()? jwtExpired,
    TResult? Function()? serverError,
    TResult? Function()? unexpectedError,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(ErrorModel error)? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? jwtExpired,
    TResult Function()? serverError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(JwtExpired value) jwtExpired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(JwtExpired value)? jwtExpired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(JwtExpired value)? jwtExpired,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements RequestFailure {
  const factory Unauthorized() = _$UnauthorizedImpl;
}

/// @nodoc
abstract class _$$JwtExpiredImplCopyWith<$Res> {
  factory _$$JwtExpiredImplCopyWith(
          _$JwtExpiredImpl value, $Res Function(_$JwtExpiredImpl) then) =
      __$$JwtExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JwtExpiredImplCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res, _$JwtExpiredImpl>
    implements _$$JwtExpiredImplCopyWith<$Res> {
  __$$JwtExpiredImplCopyWithImpl(
      _$JwtExpiredImpl _value, $Res Function(_$JwtExpiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$JwtExpiredImpl implements JwtExpired {
  const _$JwtExpiredImpl();

  @override
  String toString() {
    return 'RequestFailure.jwtExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JwtExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(ErrorModel error) badRequest,
    required TResult Function() unauthorized,
    required TResult Function() jwtExpired,
    required TResult Function() serverError,
    required TResult Function() unexpectedError,
  }) {
    return jwtExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(ErrorModel error)? badRequest,
    TResult? Function()? unauthorized,
    TResult? Function()? jwtExpired,
    TResult? Function()? serverError,
    TResult? Function()? unexpectedError,
  }) {
    return jwtExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(ErrorModel error)? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? jwtExpired,
    TResult Function()? serverError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (jwtExpired != null) {
      return jwtExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(JwtExpired value) jwtExpired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return jwtExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(JwtExpired value)? jwtExpired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return jwtExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(JwtExpired value)? jwtExpired,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (jwtExpired != null) {
      return jwtExpired(this);
    }
    return orElse();
  }
}

abstract class JwtExpired implements RequestFailure {
  const factory JwtExpired() = _$JwtExpiredImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'RequestFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(ErrorModel error) badRequest,
    required TResult Function() unauthorized,
    required TResult Function() jwtExpired,
    required TResult Function() serverError,
    required TResult Function() unexpectedError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(ErrorModel error)? badRequest,
    TResult? Function()? unauthorized,
    TResult? Function()? jwtExpired,
    TResult? Function()? serverError,
    TResult? Function()? unexpectedError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(ErrorModel error)? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? jwtExpired,
    TResult Function()? serverError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(JwtExpired value) jwtExpired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(JwtExpired value)? jwtExpired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(JwtExpired value)? jwtExpired,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements RequestFailure {
  const factory ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value,
          $Res Function(_$UnexpectedErrorImpl) then) =
      __$$UnexpectedErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$RequestFailureCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
      _$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnexpectedErrorImpl implements UnexpectedError {
  const _$UnexpectedErrorImpl();

  @override
  String toString() {
    return 'RequestFailure.unexpectedError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(ErrorModel error) badRequest,
    required TResult Function() unauthorized,
    required TResult Function() jwtExpired,
    required TResult Function() serverError,
    required TResult Function() unexpectedError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(ErrorModel error)? badRequest,
    TResult? Function()? unauthorized,
    TResult? Function()? jwtExpired,
    TResult? Function()? serverError,
    TResult? Function()? unexpectedError,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(ErrorModel error)? badRequest,
    TResult Function()? unauthorized,
    TResult Function()? jwtExpired,
    TResult Function()? serverError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(JwtExpired value) jwtExpired,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotFound value)? notFound,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(JwtExpired value)? jwtExpired,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UnexpectedError value)? unexpectedError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(JwtExpired value)? jwtExpired,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements RequestFailure {
  const factory UnexpectedError() = _$UnexpectedErrorImpl;
}
