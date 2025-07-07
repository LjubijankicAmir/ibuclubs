// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_members_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClubMembersState {
  RequestState<List<ClubMember>> get requestState =>
      throw _privateConstructorUsedError;
  RequestState<Unit> get actionRequestState =>
      throw _privateConstructorUsedError;

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClubMembersStateCopyWith<ClubMembersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubMembersStateCopyWith<$Res> {
  factory $ClubMembersStateCopyWith(
          ClubMembersState value, $Res Function(ClubMembersState) then) =
      _$ClubMembersStateCopyWithImpl<$Res, ClubMembersState>;
  @useResult
  $Res call(
      {RequestState<List<ClubMember>> requestState,
      RequestState<Unit> actionRequestState});

  $RequestStateCopyWith<List<ClubMember>, $Res> get requestState;
  $RequestStateCopyWith<Unit, $Res> get actionRequestState;
}

/// @nodoc
class _$ClubMembersStateCopyWithImpl<$Res, $Val extends ClubMembersState>
    implements $ClubMembersStateCopyWith<$Res> {
  _$ClubMembersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
    Object? actionRequestState = null,
  }) {
    return _then(_value.copyWith(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState<List<ClubMember>>,
      actionRequestState: null == actionRequestState
          ? _value.actionRequestState
          : actionRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState<Unit>,
    ) as $Val);
  }

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<List<ClubMember>, $Res> get requestState {
    return $RequestStateCopyWith<List<ClubMember>, $Res>(_value.requestState,
        (value) {
      return _then(_value.copyWith(requestState: value) as $Val);
    });
  }

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<Unit, $Res> get actionRequestState {
    return $RequestStateCopyWith<Unit, $Res>(_value.actionRequestState,
        (value) {
      return _then(_value.copyWith(actionRequestState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClubMembersStateImplCopyWith<$Res>
    implements $ClubMembersStateCopyWith<$Res> {
  factory _$$ClubMembersStateImplCopyWith(_$ClubMembersStateImpl value,
          $Res Function(_$ClubMembersStateImpl) then) =
      __$$ClubMembersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState<List<ClubMember>> requestState,
      RequestState<Unit> actionRequestState});

  @override
  $RequestStateCopyWith<List<ClubMember>, $Res> get requestState;
  @override
  $RequestStateCopyWith<Unit, $Res> get actionRequestState;
}

/// @nodoc
class __$$ClubMembersStateImplCopyWithImpl<$Res>
    extends _$ClubMembersStateCopyWithImpl<$Res, _$ClubMembersStateImpl>
    implements _$$ClubMembersStateImplCopyWith<$Res> {
  __$$ClubMembersStateImplCopyWithImpl(_$ClubMembersStateImpl _value,
      $Res Function(_$ClubMembersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
    Object? actionRequestState = null,
  }) {
    return _then(_$ClubMembersStateImpl(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState<List<ClubMember>>,
      actionRequestState: null == actionRequestState
          ? _value.actionRequestState
          : actionRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState<Unit>,
    ));
  }
}

/// @nodoc

class _$ClubMembersStateImpl implements _ClubMembersState {
  const _$ClubMembersStateImpl(
      {required this.requestState, required this.actionRequestState});

  @override
  final RequestState<List<ClubMember>> requestState;
  @override
  final RequestState<Unit> actionRequestState;

  @override
  String toString() {
    return 'ClubMembersState(requestState: $requestState, actionRequestState: $actionRequestState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubMembersStateImpl &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState) &&
            (identical(other.actionRequestState, actionRequestState) ||
                other.actionRequestState == actionRequestState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, requestState, actionRequestState);

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubMembersStateImplCopyWith<_$ClubMembersStateImpl> get copyWith =>
      __$$ClubMembersStateImplCopyWithImpl<_$ClubMembersStateImpl>(
          this, _$identity);
}

abstract class _ClubMembersState implements ClubMembersState {
  const factory _ClubMembersState(
          {required final RequestState<List<ClubMember>> requestState,
          required final RequestState<Unit> actionRequestState}) =
      _$ClubMembersStateImpl;

  @override
  RequestState<List<ClubMember>> get requestState;
  @override
  RequestState<Unit> get actionRequestState;

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubMembersStateImplCopyWith<_$ClubMembersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClubMembersEvent {
  String get clubId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) initialize,
    required TResult Function(String clubId, String memberId) promoteMember,
    required TResult Function(String clubId, String memberId) demoteMember,
    required TResult Function(String clubId, String memberId) kickMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? initialize,
    TResult? Function(String clubId, String memberId)? promoteMember,
    TResult? Function(String clubId, String memberId)? demoteMember,
    TResult? Function(String clubId, String memberId)? kickMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? initialize,
    TResult Function(String clubId, String memberId)? promoteMember,
    TResult Function(String clubId, String memberId)? demoteMember,
    TResult Function(String clubId, String memberId)? kickMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_PromoteMember value) promoteMember,
    required TResult Function(_DemoteMember value) demoteMember,
    required TResult Function(_KickMember value) kickMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_PromoteMember value)? promoteMember,
    TResult? Function(_DemoteMember value)? demoteMember,
    TResult? Function(_KickMember value)? kickMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_PromoteMember value)? promoteMember,
    TResult Function(_DemoteMember value)? demoteMember,
    TResult Function(_KickMember value)? kickMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClubMembersEventCopyWith<ClubMembersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubMembersEventCopyWith<$Res> {
  factory $ClubMembersEventCopyWith(
          ClubMembersEvent value, $Res Function(ClubMembersEvent) then) =
      _$ClubMembersEventCopyWithImpl<$Res, ClubMembersEvent>;
  @useResult
  $Res call({String clubId});
}

/// @nodoc
class _$ClubMembersEventCopyWithImpl<$Res, $Val extends ClubMembersEvent>
    implements $ClubMembersEventCopyWith<$Res> {
  _$ClubMembersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClubMembersEvent
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
    implements $ClubMembersEventCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clubId});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$ClubMembersEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$InitializeImpl(
      null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl(this.clubId);

  @override
  final String clubId;

  @override
  String toString() {
    return 'ClubMembersEvent.initialize(clubId: $clubId)';
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

  /// Create a copy of ClubMembersEvent
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
    required TResult Function(String clubId, String memberId) promoteMember,
    required TResult Function(String clubId, String memberId) demoteMember,
    required TResult Function(String clubId, String memberId) kickMember,
  }) {
    return initialize(clubId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? initialize,
    TResult? Function(String clubId, String memberId)? promoteMember,
    TResult? Function(String clubId, String memberId)? demoteMember,
    TResult? Function(String clubId, String memberId)? kickMember,
  }) {
    return initialize?.call(clubId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? initialize,
    TResult Function(String clubId, String memberId)? promoteMember,
    TResult Function(String clubId, String memberId)? demoteMember,
    TResult Function(String clubId, String memberId)? kickMember,
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
    required TResult Function(_PromoteMember value) promoteMember,
    required TResult Function(_DemoteMember value) demoteMember,
    required TResult Function(_KickMember value) kickMember,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_PromoteMember value)? promoteMember,
    TResult? Function(_DemoteMember value)? demoteMember,
    TResult? Function(_KickMember value)? kickMember,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_PromoteMember value)? promoteMember,
    TResult Function(_DemoteMember value)? demoteMember,
    TResult Function(_KickMember value)? kickMember,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ClubMembersEvent {
  const factory _Initialize(final String clubId) = _$InitializeImpl;

  @override
  String get clubId;

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromoteMemberImplCopyWith<$Res>
    implements $ClubMembersEventCopyWith<$Res> {
  factory _$$PromoteMemberImplCopyWith(
          _$PromoteMemberImpl value, $Res Function(_$PromoteMemberImpl) then) =
      __$$PromoteMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clubId, String memberId});
}

/// @nodoc
class __$$PromoteMemberImplCopyWithImpl<$Res>
    extends _$ClubMembersEventCopyWithImpl<$Res, _$PromoteMemberImpl>
    implements _$$PromoteMemberImplCopyWith<$Res> {
  __$$PromoteMemberImplCopyWithImpl(
      _$PromoteMemberImpl _value, $Res Function(_$PromoteMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? memberId = null,
  }) {
    return _then(_$PromoteMemberImpl(
      null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PromoteMemberImpl implements _PromoteMember {
  const _$PromoteMemberImpl(this.clubId, this.memberId);

  @override
  final String clubId;
  @override
  final String memberId;

  @override
  String toString() {
    return 'ClubMembersEvent.promoteMember(clubId: $clubId, memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromoteMemberImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId, memberId);

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromoteMemberImplCopyWith<_$PromoteMemberImpl> get copyWith =>
      __$$PromoteMemberImplCopyWithImpl<_$PromoteMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) initialize,
    required TResult Function(String clubId, String memberId) promoteMember,
    required TResult Function(String clubId, String memberId) demoteMember,
    required TResult Function(String clubId, String memberId) kickMember,
  }) {
    return promoteMember(clubId, memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? initialize,
    TResult? Function(String clubId, String memberId)? promoteMember,
    TResult? Function(String clubId, String memberId)? demoteMember,
    TResult? Function(String clubId, String memberId)? kickMember,
  }) {
    return promoteMember?.call(clubId, memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? initialize,
    TResult Function(String clubId, String memberId)? promoteMember,
    TResult Function(String clubId, String memberId)? demoteMember,
    TResult Function(String clubId, String memberId)? kickMember,
    required TResult orElse(),
  }) {
    if (promoteMember != null) {
      return promoteMember(clubId, memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_PromoteMember value) promoteMember,
    required TResult Function(_DemoteMember value) demoteMember,
    required TResult Function(_KickMember value) kickMember,
  }) {
    return promoteMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_PromoteMember value)? promoteMember,
    TResult? Function(_DemoteMember value)? demoteMember,
    TResult? Function(_KickMember value)? kickMember,
  }) {
    return promoteMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_PromoteMember value)? promoteMember,
    TResult Function(_DemoteMember value)? demoteMember,
    TResult Function(_KickMember value)? kickMember,
    required TResult orElse(),
  }) {
    if (promoteMember != null) {
      return promoteMember(this);
    }
    return orElse();
  }
}

abstract class _PromoteMember implements ClubMembersEvent {
  const factory _PromoteMember(final String clubId, final String memberId) =
      _$PromoteMemberImpl;

  @override
  String get clubId;
  String get memberId;

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromoteMemberImplCopyWith<_$PromoteMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DemoteMemberImplCopyWith<$Res>
    implements $ClubMembersEventCopyWith<$Res> {
  factory _$$DemoteMemberImplCopyWith(
          _$DemoteMemberImpl value, $Res Function(_$DemoteMemberImpl) then) =
      __$$DemoteMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clubId, String memberId});
}

/// @nodoc
class __$$DemoteMemberImplCopyWithImpl<$Res>
    extends _$ClubMembersEventCopyWithImpl<$Res, _$DemoteMemberImpl>
    implements _$$DemoteMemberImplCopyWith<$Res> {
  __$$DemoteMemberImplCopyWithImpl(
      _$DemoteMemberImpl _value, $Res Function(_$DemoteMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? memberId = null,
  }) {
    return _then(_$DemoteMemberImpl(
      null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DemoteMemberImpl implements _DemoteMember {
  const _$DemoteMemberImpl(this.clubId, this.memberId);

  @override
  final String clubId;
  @override
  final String memberId;

  @override
  String toString() {
    return 'ClubMembersEvent.demoteMember(clubId: $clubId, memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemoteMemberImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId, memberId);

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemoteMemberImplCopyWith<_$DemoteMemberImpl> get copyWith =>
      __$$DemoteMemberImplCopyWithImpl<_$DemoteMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) initialize,
    required TResult Function(String clubId, String memberId) promoteMember,
    required TResult Function(String clubId, String memberId) demoteMember,
    required TResult Function(String clubId, String memberId) kickMember,
  }) {
    return demoteMember(clubId, memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? initialize,
    TResult? Function(String clubId, String memberId)? promoteMember,
    TResult? Function(String clubId, String memberId)? demoteMember,
    TResult? Function(String clubId, String memberId)? kickMember,
  }) {
    return demoteMember?.call(clubId, memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? initialize,
    TResult Function(String clubId, String memberId)? promoteMember,
    TResult Function(String clubId, String memberId)? demoteMember,
    TResult Function(String clubId, String memberId)? kickMember,
    required TResult orElse(),
  }) {
    if (demoteMember != null) {
      return demoteMember(clubId, memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_PromoteMember value) promoteMember,
    required TResult Function(_DemoteMember value) demoteMember,
    required TResult Function(_KickMember value) kickMember,
  }) {
    return demoteMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_PromoteMember value)? promoteMember,
    TResult? Function(_DemoteMember value)? demoteMember,
    TResult? Function(_KickMember value)? kickMember,
  }) {
    return demoteMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_PromoteMember value)? promoteMember,
    TResult Function(_DemoteMember value)? demoteMember,
    TResult Function(_KickMember value)? kickMember,
    required TResult orElse(),
  }) {
    if (demoteMember != null) {
      return demoteMember(this);
    }
    return orElse();
  }
}

abstract class _DemoteMember implements ClubMembersEvent {
  const factory _DemoteMember(final String clubId, final String memberId) =
      _$DemoteMemberImpl;

  @override
  String get clubId;
  String get memberId;

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemoteMemberImplCopyWith<_$DemoteMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KickMemberImplCopyWith<$Res>
    implements $ClubMembersEventCopyWith<$Res> {
  factory _$$KickMemberImplCopyWith(
          _$KickMemberImpl value, $Res Function(_$KickMemberImpl) then) =
      __$$KickMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clubId, String memberId});
}

/// @nodoc
class __$$KickMemberImplCopyWithImpl<$Res>
    extends _$ClubMembersEventCopyWithImpl<$Res, _$KickMemberImpl>
    implements _$$KickMemberImplCopyWith<$Res> {
  __$$KickMemberImplCopyWithImpl(
      _$KickMemberImpl _value, $Res Function(_$KickMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? memberId = null,
  }) {
    return _then(_$KickMemberImpl(
      null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KickMemberImpl implements _KickMember {
  const _$KickMemberImpl(this.clubId, this.memberId);

  @override
  final String clubId;
  @override
  final String memberId;

  @override
  String toString() {
    return 'ClubMembersEvent.kickMember(clubId: $clubId, memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KickMemberImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId, memberId);

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KickMemberImplCopyWith<_$KickMemberImpl> get copyWith =>
      __$$KickMemberImplCopyWithImpl<_$KickMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clubId) initialize,
    required TResult Function(String clubId, String memberId) promoteMember,
    required TResult Function(String clubId, String memberId) demoteMember,
    required TResult Function(String clubId, String memberId) kickMember,
  }) {
    return kickMember(clubId, memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clubId)? initialize,
    TResult? Function(String clubId, String memberId)? promoteMember,
    TResult? Function(String clubId, String memberId)? demoteMember,
    TResult? Function(String clubId, String memberId)? kickMember,
  }) {
    return kickMember?.call(clubId, memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clubId)? initialize,
    TResult Function(String clubId, String memberId)? promoteMember,
    TResult Function(String clubId, String memberId)? demoteMember,
    TResult Function(String clubId, String memberId)? kickMember,
    required TResult orElse(),
  }) {
    if (kickMember != null) {
      return kickMember(clubId, memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_PromoteMember value) promoteMember,
    required TResult Function(_DemoteMember value) demoteMember,
    required TResult Function(_KickMember value) kickMember,
  }) {
    return kickMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_PromoteMember value)? promoteMember,
    TResult? Function(_DemoteMember value)? demoteMember,
    TResult? Function(_KickMember value)? kickMember,
  }) {
    return kickMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_PromoteMember value)? promoteMember,
    TResult Function(_DemoteMember value)? demoteMember,
    TResult Function(_KickMember value)? kickMember,
    required TResult orElse(),
  }) {
    if (kickMember != null) {
      return kickMember(this);
    }
    return orElse();
  }
}

abstract class _KickMember implements ClubMembersEvent {
  const factory _KickMember(final String clubId, final String memberId) =
      _$KickMemberImpl;

  @override
  String get clubId;
  String get memberId;

  /// Create a copy of ClubMembersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KickMemberImplCopyWith<_$KickMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
