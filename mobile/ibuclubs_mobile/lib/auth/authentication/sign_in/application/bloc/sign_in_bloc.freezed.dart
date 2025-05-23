// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email data) emailChanged,
    required TResult Function() emailLeft,
    required TResult Function(Password data) passwordChanged,
    required TResult Function() passwordLeft,
    required TResult Function() signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Email data)? emailChanged,
    TResult? Function()? emailLeft,
    TResult? Function(Password data)? passwordChanged,
    TResult? Function()? passwordLeft,
    TResult? Function()? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email data)? emailChanged,
    TResult Function()? emailLeft,
    TResult Function(Password data)? passwordChanged,
    TResult Function()? passwordLeft,
    TResult Function()? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailLeft value) emailLeft,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordLeft value) passwordLeft,
    required TResult Function(_SignIn value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_EmailLeft value)? emailLeft,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordLeft value)? passwordLeft,
    TResult? Function(_SignIn value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailLeft value)? emailLeft,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordLeft value)? passwordLeft,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Email data});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.data);

  @override
  final Email data;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email data) emailChanged,
    required TResult Function() emailLeft,
    required TResult Function(Password data) passwordChanged,
    required TResult Function() passwordLeft,
    required TResult Function() signIn,
  }) {
    return emailChanged(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Email data)? emailChanged,
    TResult? Function()? emailLeft,
    TResult? Function(Password data)? passwordChanged,
    TResult? Function()? passwordLeft,
    TResult? Function()? signIn,
  }) {
    return emailChanged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email data)? emailChanged,
    TResult Function()? emailLeft,
    TResult Function(Password data)? passwordChanged,
    TResult Function()? passwordLeft,
    TResult Function()? signIn,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailLeft value) emailLeft,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordLeft value) passwordLeft,
    required TResult Function(_SignIn value) signIn,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_EmailLeft value)? emailLeft,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordLeft value)? passwordLeft,
    TResult? Function(_SignIn value)? signIn,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailLeft value)? emailLeft,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordLeft value)? passwordLeft,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInEvent {
  const factory _EmailChanged(final Email data) = _$EmailChangedImpl;

  Email get data;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailLeftImplCopyWith<$Res> {
  factory _$$EmailLeftImplCopyWith(
          _$EmailLeftImpl value, $Res Function(_$EmailLeftImpl) then) =
      __$$EmailLeftImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailLeftImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$EmailLeftImpl>
    implements _$$EmailLeftImplCopyWith<$Res> {
  __$$EmailLeftImplCopyWithImpl(
      _$EmailLeftImpl _value, $Res Function(_$EmailLeftImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailLeftImpl implements _EmailLeft {
  const _$EmailLeftImpl();

  @override
  String toString() {
    return 'SignInEvent.emailLeft()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailLeftImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email data) emailChanged,
    required TResult Function() emailLeft,
    required TResult Function(Password data) passwordChanged,
    required TResult Function() passwordLeft,
    required TResult Function() signIn,
  }) {
    return emailLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Email data)? emailChanged,
    TResult? Function()? emailLeft,
    TResult? Function(Password data)? passwordChanged,
    TResult? Function()? passwordLeft,
    TResult? Function()? signIn,
  }) {
    return emailLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email data)? emailChanged,
    TResult Function()? emailLeft,
    TResult Function(Password data)? passwordChanged,
    TResult Function()? passwordLeft,
    TResult Function()? signIn,
    required TResult orElse(),
  }) {
    if (emailLeft != null) {
      return emailLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailLeft value) emailLeft,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordLeft value) passwordLeft,
    required TResult Function(_SignIn value) signIn,
  }) {
    return emailLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_EmailLeft value)? emailLeft,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordLeft value)? passwordLeft,
    TResult? Function(_SignIn value)? signIn,
  }) {
    return emailLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailLeft value)? emailLeft,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordLeft value)? passwordLeft,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (emailLeft != null) {
      return emailLeft(this);
    }
    return orElse();
  }
}

abstract class _EmailLeft implements SignInEvent {
  const factory _EmailLeft() = _$EmailLeftImpl;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Password data});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.data);

  @override
  final Password data;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email data) emailChanged,
    required TResult Function() emailLeft,
    required TResult Function(Password data) passwordChanged,
    required TResult Function() passwordLeft,
    required TResult Function() signIn,
  }) {
    return passwordChanged(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Email data)? emailChanged,
    TResult? Function()? emailLeft,
    TResult? Function(Password data)? passwordChanged,
    TResult? Function()? passwordLeft,
    TResult? Function()? signIn,
  }) {
    return passwordChanged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email data)? emailChanged,
    TResult Function()? emailLeft,
    TResult Function(Password data)? passwordChanged,
    TResult Function()? passwordLeft,
    TResult Function()? signIn,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailLeft value) emailLeft,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordLeft value) passwordLeft,
    required TResult Function(_SignIn value) signIn,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_EmailLeft value)? emailLeft,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordLeft value)? passwordLeft,
    TResult? Function(_SignIn value)? signIn,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailLeft value)? emailLeft,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordLeft value)? passwordLeft,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInEvent {
  const factory _PasswordChanged(final Password data) = _$PasswordChangedImpl;

  Password get data;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordLeftImplCopyWith<$Res> {
  factory _$$PasswordLeftImplCopyWith(
          _$PasswordLeftImpl value, $Res Function(_$PasswordLeftImpl) then) =
      __$$PasswordLeftImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordLeftImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$PasswordLeftImpl>
    implements _$$PasswordLeftImplCopyWith<$Res> {
  __$$PasswordLeftImplCopyWithImpl(
      _$PasswordLeftImpl _value, $Res Function(_$PasswordLeftImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordLeftImpl implements _PasswordLeft {
  const _$PasswordLeftImpl();

  @override
  String toString() {
    return 'SignInEvent.passwordLeft()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PasswordLeftImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email data) emailChanged,
    required TResult Function() emailLeft,
    required TResult Function(Password data) passwordChanged,
    required TResult Function() passwordLeft,
    required TResult Function() signIn,
  }) {
    return passwordLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Email data)? emailChanged,
    TResult? Function()? emailLeft,
    TResult? Function(Password data)? passwordChanged,
    TResult? Function()? passwordLeft,
    TResult? Function()? signIn,
  }) {
    return passwordLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email data)? emailChanged,
    TResult Function()? emailLeft,
    TResult Function(Password data)? passwordChanged,
    TResult Function()? passwordLeft,
    TResult Function()? signIn,
    required TResult orElse(),
  }) {
    if (passwordLeft != null) {
      return passwordLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailLeft value) emailLeft,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordLeft value) passwordLeft,
    required TResult Function(_SignIn value) signIn,
  }) {
    return passwordLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_EmailLeft value)? emailLeft,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordLeft value)? passwordLeft,
    TResult? Function(_SignIn value)? signIn,
  }) {
    return passwordLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailLeft value)? emailLeft,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordLeft value)? passwordLeft,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (passwordLeft != null) {
      return passwordLeft(this);
    }
    return orElse();
  }
}

abstract class _PasswordLeft implements SignInEvent {
  const factory _PasswordLeft() = _$PasswordLeftImpl;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl();

  @override
  String toString() {
    return 'SignInEvent.signIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email data) emailChanged,
    required TResult Function() emailLeft,
    required TResult Function(Password data) passwordChanged,
    required TResult Function() passwordLeft,
    required TResult Function() signIn,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Email data)? emailChanged,
    TResult? Function()? emailLeft,
    TResult? Function(Password data)? passwordChanged,
    TResult? Function()? passwordLeft,
    TResult? Function()? signIn,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email data)? emailChanged,
    TResult Function()? emailLeft,
    TResult Function(Password data)? passwordChanged,
    TResult Function()? passwordLeft,
    TResult Function()? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailLeft value) emailLeft,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordLeft value) passwordLeft,
    required TResult Function(_SignIn value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_EmailLeft value)? emailLeft,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_PasswordLeft value)? passwordLeft,
    TResult? Function(_SignIn value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailLeft value)? emailLeft,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordLeft value)? passwordLeft,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements SignInEvent {
  const factory _SignIn() = _$SignInImpl;
}

/// @nodoc
mixin _$SignInState {
  SignInFormState get form => throw _privateConstructorUsedError;
  RequestState<Jwt> get requestState => throw _privateConstructorUsedError;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({SignInFormState form, RequestState<Jwt> requestState});

  $SignInFormStateCopyWith<$Res> get form;
  $RequestStateCopyWith<Jwt, $Res> get requestState;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? requestState = null,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as SignInFormState,
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState<Jwt>,
    ) as $Val);
  }

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignInFormStateCopyWith<$Res> get form {
    return $SignInFormStateCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<Jwt, $Res> get requestState {
    return $RequestStateCopyWith<Jwt, $Res>(_value.requestState, (value) {
      return _then(_value.copyWith(requestState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInFormState form, RequestState<Jwt> requestState});

  @override
  $SignInFormStateCopyWith<$Res> get form;
  @override
  $RequestStateCopyWith<Jwt, $Res> get requestState;
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? requestState = null,
  }) {
    return _then(_$SignInStateImpl(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as SignInFormState,
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState<Jwt>,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  const _$SignInStateImpl({required this.form, required this.requestState});

  @override
  final SignInFormState form;
  @override
  final RequestState<Jwt> requestState;

  @override
  String toString() {
    return 'SignInState(form: $form, requestState: $requestState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form, requestState);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final SignInFormState form,
      required final RequestState<Jwt> requestState}) = _$SignInStateImpl;

  @override
  SignInFormState get form;
  @override
  RequestState<Jwt> get requestState;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
