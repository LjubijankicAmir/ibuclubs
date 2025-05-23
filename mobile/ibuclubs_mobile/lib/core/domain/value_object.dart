import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/core/domain/value_failure.dart';

@immutable
abstract class ValueObject<T extends Object> extends Equatable {
  final T _value;
  late final Option<ValueFailure> _failure = validate(value);

  ValueObject(this._value);

  Option<ValueFailure> validate(T value);

  T get value => _value;
  Option<ValueFailure> get failure => _failure;

  bool get isValid => _failure.isNone();

  @override
  List<Object> get props => [_value];
}
