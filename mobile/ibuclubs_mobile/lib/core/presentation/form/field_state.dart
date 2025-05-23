import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_state.freezed.dart';

@freezed
class FieldState with _$FieldState {
  const factory FieldState.pure() = Pure;
  const factory FieldState.touched() = Touched;
  const factory FieldState.dirty() = Dirty;
}

extension FieldStateExtensions on FieldState {
  FieldState touch() => this is Pure ? const Touched() : this;
  FieldState left() => const Dirty();
}
