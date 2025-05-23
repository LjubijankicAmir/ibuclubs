import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/core/presentation/form/value_form_field.dart';

export 'value_form_field.dart';

@immutable
mixin Form {
  late final bool isValid = getFields().every(
    (element) => element.input.isValid,
  );
  late final bool isDirty = getFields().every(
    (element) => element.fieldState is Dirty,
  );

  BuiltList<ValueFormField> getFields();
}
