import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';
import 'package:ibuclubs_mobile/core/presentation/form/field_state.dart';

export 'field_state.dart';

part 'value_form_field.freezed.dart';

@freezed
class ValueFormField<T extends ValueObject> with _$ValueFormField<T> {
  const factory ValueFormField(T input, FieldState fieldState) =
      _ValueFormField;

  factory ValueFormField.pure(T input) => ValueFormField(input, const Pure());

  const ValueFormField._();

  String? get id => input.toString();
}

extension ValueFormFieldExtensions<T extends ValueObject> on ValueFormField<T> {
  ValueFormField<T> changed(T input) =>
      copyWith(input: input, fieldState: fieldState.touch());
  ValueFormField<T> left() => copyWith(fieldState: fieldState.left());
}
