// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClubDetailsState {
  RequestState<ClubDetails> get requestState =>
      throw _privateConstructorUsedError;
  RequestState<Unit> get membershipState => throw _privateConstructorUsedError;

  /// Create a copy of ClubDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClubDetailsStateCopyWith<ClubDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubDetailsStateCopyWith<$Res> {
  factory $ClubDetailsStateCopyWith(
          ClubDetailsState value, $Res Function(ClubDetailsState) then) =
      _$ClubDetailsStateCopyWithImpl<$Res, ClubDetailsState>;
  @useResult
  $Res call(
      {RequestState<ClubDetails> requestState,
      RequestState<Unit> membershipState});

  $RequestStateCopyWith<ClubDetails, $Res> get requestState;
  $RequestStateCopyWith<Unit, $Res> get membershipState;
}

/// @nodoc
class _$ClubDetailsStateCopyWithImpl<$Res, $Val extends ClubDetailsState>
    implements $ClubDetailsStateCopyWith<$Res> {
  _$ClubDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClubDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
    Object? membershipState = null,
  }) {
    return _then(_value.copyWith(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState<ClubDetails>,
      membershipState: null == membershipState
          ? _value.membershipState
          : membershipState // ignore: cast_nullable_to_non_nullable
              as RequestState<Unit>,
    ) as $Val);
  }

  /// Create a copy of ClubDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<ClubDetails, $Res> get requestState {
    return $RequestStateCopyWith<ClubDetails, $Res>(_value.requestState,
        (value) {
      return _then(_value.copyWith(requestState: value) as $Val);
    });
  }

  /// Create a copy of ClubDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<Unit, $Res> get membershipState {
    return $RequestStateCopyWith<Unit, $Res>(_value.membershipState, (value) {
      return _then(_value.copyWith(membershipState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClubDetailsStateImplCopyWith<$Res>
    implements $ClubDetailsStateCopyWith<$Res> {
  factory _$$ClubDetailsStateImplCopyWith(_$ClubDetailsStateImpl value,
          $Res Function(_$ClubDetailsStateImpl) then) =
      __$$ClubDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState<ClubDetails> requestState,
      RequestState<Unit> membershipState});

  @override
  $RequestStateCopyWith<ClubDetails, $Res> get requestState;
  @override
  $RequestStateCopyWith<Unit, $Res> get membershipState;
}

/// @nodoc
class __$$ClubDetailsStateImplCopyWithImpl<$Res>
    extends _$ClubDetailsStateCopyWithImpl<$Res, _$ClubDetailsStateImpl>
    implements _$$ClubDetailsStateImplCopyWith<$Res> {
  __$$ClubDetailsStateImplCopyWithImpl(_$ClubDetailsStateImpl _value,
      $Res Function(_$ClubDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
    Object? membershipState = null,
  }) {
    return _then(_$ClubDetailsStateImpl(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState<ClubDetails>,
      membershipState: null == membershipState
          ? _value.membershipState
          : membershipState // ignore: cast_nullable_to_non_nullable
              as RequestState<Unit>,
    ));
  }
}

/// @nodoc

class _$ClubDetailsStateImpl implements _ClubDetailsState {
  _$ClubDetailsStateImpl(
      {required this.requestState, required this.membershipState});

  @override
  final RequestState<ClubDetails> requestState;
  @override
  final RequestState<Unit> membershipState;

  @override
  String toString() {
    return 'ClubDetailsState(requestState: $requestState, membershipState: $membershipState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubDetailsStateImpl &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState) &&
            (identical(other.membershipState, membershipState) ||
                other.membershipState == membershipState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestState, membershipState);

  /// Create a copy of ClubDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubDetailsStateImplCopyWith<_$ClubDetailsStateImpl> get copyWith =>
      __$$ClubDetailsStateImplCopyWithImpl<_$ClubDetailsStateImpl>(
          this, _$identity);
}

abstract class _ClubDetailsState implements ClubDetailsState {
  factory _ClubDetailsState(
          {required final RequestState<ClubDetails> requestState,
          required final RequestState<Unit> membershipState}) =
      _$ClubDetailsStateImpl;

  @override
  RequestState<ClubDetails> get requestState;
  @override
  RequestState<Unit> get membershipState;

  /// Create a copy of ClubDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubDetailsStateImplCopyWith<_$ClubDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClubDetailsEvent {
  String get clubId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) initialize,
    required TResult Function(String clubId, bool isMember) updateMembership,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? initialize,
    TResult? Function(String clubId, bool isMember)? updateMembership,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? initialize,
    TResult Function(String clubId, bool isMember)? updateMembership,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_UpdateMembership value) updateMembership,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_UpdateMembership value)? updateMembership,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_UpdateMembership value)? updateMembership,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ClubDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClubDetailsEventCopyWith<ClubDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubDetailsEventCopyWith<$Res> {
  factory $ClubDetailsEventCopyWith(
          ClubDetailsEvent value, $Res Function(ClubDetailsEvent) then) =
      _$ClubDetailsEventCopyWithImpl<$Res, ClubDetailsEvent>;
  @useResult
  $Res call({String clubId});
}

/// @nodoc
class _$ClubDetailsEventCopyWithImpl<$Res, $Val extends ClubDetailsEvent>
    implements $ClubDetailsEventCopyWith<$Res> {
  _$ClubDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClubDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res>
    implements $ClubDetailsEventCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clubId});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$ClubDetailsEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$InitializeImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl({required this.clubId});

  @override
  final String clubId;

  @override
  String toString() {
    return 'ClubDetailsEvent.initialize(clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  /// Create a copy of ClubDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) initialize,
    required TResult Function(String clubId, bool isMember) updateMembership,
  }) {
    return initialize(clubId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? initialize,
    TResult? Function(String clubId, bool isMember)? updateMembership,
  }) {
    return initialize?.call(clubId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? initialize,
    TResult Function(String clubId, bool isMember)? updateMembership,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(clubId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_UpdateMembership value) updateMembership,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_UpdateMembership value)? updateMembership,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_UpdateMembership value)? updateMembership,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ClubDetailsEvent {
  const factory _Initialize({required final String clubId}) = _$InitializeImpl;

  @override
  String get clubId;

  /// Create a copy of ClubDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMembershipImplCopyWith<$Res>
    implements $ClubDetailsEventCopyWith<$Res> {
  factory _$$UpdateMembershipImplCopyWith(_$UpdateMembershipImpl value,
          $Res Function(_$UpdateMembershipImpl) then) =
      __$$UpdateMembershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clubId, bool isMember});
}

/// @nodoc
class __$$UpdateMembershipImplCopyWithImpl<$Res>
    extends _$ClubDetailsEventCopyWithImpl<$Res, _$UpdateMembershipImpl>
    implements _$$UpdateMembershipImplCopyWith<$Res> {
  __$$UpdateMembershipImplCopyWithImpl(_$UpdateMembershipImpl _value,
      $Res Function(_$UpdateMembershipImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? isMember = null,
  }) {
    return _then(_$UpdateMembershipImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      isMember: null == isMember
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateMembershipImpl implements _UpdateMembership {
  const _$UpdateMembershipImpl({required this.clubId, required this.isMember});

  @override
  final String clubId;
  @override
  final bool isMember;

  @override
  String toString() {
    return 'ClubDetailsEvent.updateMembership(clubId: $clubId, isMember: $isMember)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMembershipImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.isMember, isMember) ||
                other.isMember == isMember));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId, isMember);

  /// Create a copy of ClubDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMembershipImplCopyWith<_$UpdateMembershipImpl> get copyWith =>
      __$$UpdateMembershipImplCopyWithImpl<_$UpdateMembershipImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) initialize,
    required TResult Function(String clubId, bool isMember) updateMembership,
  }) {
    return updateMembership(clubId, isMember);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? initialize,
    TResult? Function(String clubId, bool isMember)? updateMembership,
  }) {
    return updateMembership?.call(clubId, isMember);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? initialize,
    TResult Function(String clubId, bool isMember)? updateMembership,
    required TResult orElse(),
  }) {
    if (updateMembership != null) {
      return updateMembership(clubId, isMember);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_UpdateMembership value) updateMembership,
  }) {
    return updateMembership(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_UpdateMembership value)? updateMembership,
  }) {
    return updateMembership?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_UpdateMembership value)? updateMembership,
    required TResult orElse(),
  }) {
    if (updateMembership != null) {
      return updateMembership(this);
    }
    return orElse();
  }
}

abstract class _UpdateMembership implements ClubDetailsEvent {
  const factory _UpdateMembership(
      {required final String clubId,
      required final bool isMember}) = _$UpdateMembershipImpl;

  @override
  String get clubId;
  bool get isMember;

  /// Create a copy of ClubDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMembershipImplCopyWith<_$UpdateMembershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
