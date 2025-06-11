import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';
import 'package:ibuclubs_mobile/core/presentation/form/form.dart';
import 'package:ibuclubs_mobile/features/activities/domain/activity_points.dart';
import 'package:ibuclubs_mobile/features/activities/domain/date.dart';
import 'package:ibuclubs_mobile/features/activities/domain/description.dart';
import 'package:ibuclubs_mobile/features/activities/domain/max_participants.dart';
import 'package:ibuclubs_mobile/features/activities/domain/name.dart';
import 'package:ibuclubs_mobile/features/activities/domain/time.dart';

part 'create_activity_form_state.freezed.dart';

@freezed
class CreateActivityFormState with _$CreateActivityFormState, Form {
  factory CreateActivityFormState({
    required ValueFormField<Name> name,
    required ValueFormField<Description> description,
    required ValueFormField<Date> date,
    required ValueFormField<Time> time,
    required ValueFormField<ActivityPoints> activityPoints,
    required ValueFormField<MaxParticipants> maxParticipants,
  }) = _CreateActivityFormState;

  factory CreateActivityFormState.empty() => CreateActivityFormState(
    name: ValueFormField<Name>.pure(Name.empty()),
    description: ValueFormField<Description>.pure(Description.empty()),
    date: ValueFormField<Date>.pure(Date.empty()),
    time: ValueFormField<Time>.pure(Time.empty()),
    activityPoints: ValueFormField<ActivityPoints>.pure(ActivityPoints.empty()),
    maxParticipants: ValueFormField<MaxParticipants>.pure(
      MaxParticipants.empty(),
    ),
  );

  CreateActivityFormState._();

  @override
  BuiltList<ValueFormField<ValueObject<Object>>> getFields() => BuiltList([
    name,
    description,
    date,
    time,
    activityPoints,
    maxParticipants,
  ]);
}
