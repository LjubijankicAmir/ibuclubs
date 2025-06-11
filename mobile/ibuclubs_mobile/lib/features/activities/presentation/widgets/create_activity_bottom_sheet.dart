import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/presentation/form/widgets/value_form_field.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/request/request_failure_snack.dart';
import 'package:ibuclubs_mobile/features/activities/application/activities_bloc.dart';
import 'package:ibuclubs_mobile/features/activities/domain/activity_points.dart';
import 'package:ibuclubs_mobile/features/activities/domain/description.dart';
import 'package:ibuclubs_mobile/features/activities/domain/max_participants.dart';
import 'package:ibuclubs_mobile/features/activities/domain/name.dart';
import 'package:ibuclubs_mobile/features/activities/presentation/widgets/date_picker_field.dart';
import 'package:ibuclubs_mobile/features/activities/presentation/widgets/time_picker_field.dart';

void showCreateActivityBottomSheet(BuildContext context) {
  final bloc = context.read<ActivitiesBloc>();

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder:
        (context) => BlocProvider.value(
          value: bloc,
          child: BlocConsumer<ActivitiesBloc, ActivitiesState>(
            listener:
                (context, state) => state.createActivityState.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  failed:
                      (failure) => RequestFailureSnack.show(context, failure),
                  success: (result) => AutoRouter.of(context).maybePop(),
                ),
            builder:
                (context, state) => Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 40,
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "Submit a club activity",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            "Activity name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ValueFormField(
                            fieldName: "Activity name",
                            formField: state.form.name,
                            onLeft:
                                () =>
                                    bloc.add(const ActivitiesEvent.nameLeft()),
                            onChanged:
                                (value) => bloc.add(
                                  ActivitiesEvent.nameChanged(Name(value)),
                                ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ValueFormField(
                            fieldName: "Description",
                            formField: state.form.description,
                            lines: 4,
                            onLeft:
                                () => bloc.add(
                                  const ActivitiesEvent.descriptionLeft(),
                                ),
                            onChanged:
                                (value) => bloc.add(
                                  ActivitiesEvent.descriptionChanged(
                                    Description(value),
                                  ),
                                ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Activity points",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    ValueFormField(
                                      fieldName: "Activity points",
                                      formField: state.form.activityPoints,
                                      onLeft:
                                          () => bloc.add(
                                            const ActivitiesEvent.activityPointsLeft(),
                                          ),
                                      onChanged:
                                          (value) => bloc.add(
                                            ActivitiesEvent.activityPointsChanged(
                                              ActivityPoints(int.parse(value)),
                                            ),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Max participants",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    ValueFormField(
                                      fieldName: "Max participants",
                                      formField: state.form.maxParticipants,
                                      onLeft:
                                          () => bloc.add(
                                            const ActivitiesEvent.maxParticipantsLeft(),
                                          ),
                                      onChanged:
                                          (value) => bloc.add(
                                            ActivitiesEvent.maxParticipantsChanged(
                                              MaxParticipants(int.parse(value)),
                                            ),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Date",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    DatePickerField(
                                      formField: state.form.date,
                                      hint: "Date",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    TimePickerField(
                                      formField: state.form.time,
                                      hint: "Time",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 36),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: state.createActivityState.maybeWhen(
                              processing:
                                  () => ElevatedButton(
                                    onPressed: null,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: kPrimaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                        color: kBackgroundColor,
                                      ),
                                    ),
                                  ),
                              orElse:
                                  () => ElevatedButton(
                                    onPressed: () {
                                      bloc.add(
                                        const ActivitiesEvent.createActivity(),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: kPrimaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: const Text(
                                      "Submit activity",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: kBackgroundColor,
                                      ),
                                    ),
                                  ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
          ),
        ),
  );
}
