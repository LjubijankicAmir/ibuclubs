// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInFormState {
  ValueFormField<Email> get email => throw _privateConstructorUsedError;
  ValueFormField<Password> get password => throw _privateConstructorUsedError;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call({ValueFormField<Email> email, ValueFormField<Password> password});

  $ValueFormFieldCopyWith<Email, $Res> get email;
  $ValueFormFieldCopyWith<Password, $Res> get password;
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as ValueFormField<Email>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as ValueFormField<Password>,
    ) as $Val);
  }

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueFormFieldCopyWith<Email, $Res> get email {
    return $ValueFormFieldCopyWith<Email, $Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueFormFieldCopyWith<Password, $Res> get password {
    return $ValueFormFieldCopyWith<Password, $Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpFormStateImplCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$SignUpFormStateImplCopyWith(_$SignUpFormStateImpl value,
          $Res Function(_$SignUpFormStateImpl) then) =
      __$$SignUpFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValueFormField<Email> email, ValueFormField<Password> password});

  @override
  $ValueFormFieldCopyWith<Email, $Res> get email;
  @override
  $ValueFormFieldCopyWith<Password, $Res> get password;
}

/// @nodoc
class __$$SignUpFormStateImplCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$SignUpFormStateImpl>
    implements _$$SignUpFormStateImplCopyWith<$Res> {
  __$$SignUpFormStateImplCopyWithImpl(
      _$SignUpFormStateImpl _value, $Res Function(_$SignUpFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpFormStateImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as ValueFormField<Email>,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as ValueFormField<Password>,
    ));
  }
}

/// @nodoc

class _$SignUpFormStateImpl extends _SignUpFormState {
  _$SignUpFormStateImpl(this.email, this.password) : super._();

  @override
  final ValueFormField<Email> email;
  @override
  final ValueFormField<Password> password;

  @override
  String toString() {
    return 'SignInFormState(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFormStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFormStateImplCopyWith<_$SignUpFormStateImpl> get copyWith =>
      __$$SignUpFormStateImplCopyWithImpl<_$SignUpFormStateImpl>(
          this, _$identity);
}

abstract class _SignUpFormState extends SignInFormState {
  factory _SignUpFormState(final ValueFormField<Email> email,
      final ValueFormField<Password> password) = _$SignUpFormStateImpl;
  _SignUpFormState._() : super._();

  @override
  ValueFormField<Email> get email;
  @override
  ValueFormField<Password> get password;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFormStateImplCopyWith<_$SignUpFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
