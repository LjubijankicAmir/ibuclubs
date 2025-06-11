import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/features/activities/domain/date.dart';
import 'package:intl/intl.dart';
import 'package:ibuclubs_mobile/core/presentation/form/form.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/calendar_view.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/fade_in_widget.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/slide_in_widget.dart';
import 'package:ibuclubs_mobile/features/activities/application/activities_bloc.dart';

class DatePickerField extends StatefulWidget {
  final String hint;
  final ValueFormField<Date> formField;

  const DatePickerField({
    super.key,
    required this.formField,
    required this.hint,
  });

  @override
  createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.text =
        widget.formField.input.value.isEmpty
            ? ''
            : DateFormat(
              'dd-MM-yyyy',
            ).format(DateTime.parse(widget.formField.input.value));
    final today = DateTime.now();
    return TextFormField(
      controller: _controller,
      style: TextStyle(fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.calendar_month_rounded,
          color: kPrimaryColor,
          size: 20,
        ),
        hintText: widget.hint,
      ),
      readOnly: true,
      autovalidateMode: widget.formField.fieldState.when(
        pure: () => AutovalidateMode.disabled,
        touched: () => AutovalidateMode.disabled,
        dirty: () => AutovalidateMode.always,
      ),
      validator:
          (_) => widget.formField.input.failure.fold(
            () => null,
            (failure) => failure.error,
          ),
      onTap:
          () => showDialog(
            context: context,
            builder:
                (_) => BlocProvider.value(
                  value: context.read<ActivitiesBloc>(),
                  child: BlocBuilder<ActivitiesBloc, ActivitiesState>(
                    builder: (context, state) {
                      final value = state.form.date.input.value;
                      final selected =
                          value.isEmpty ? today : DateTime.parse(value);
                      return FadeInWidget(
                        duration: 300,
                        child: SlideInWidget(
                          duration: 300,
                          start: Offset(0, 0.05),
                          child: Dialog(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: kDefaultPadding,
                                  child: CalendarView(
                                    focusedDay: selected,
                                    firstDay: today,
                                    lastDay: today.add(Duration(days: 365)),
                                    onDaySelected: (day, _) {
                                      context.read<ActivitiesBloc>().add(
                                        ActivitiesEvent.dateChanged(
                                          Date(day.toIso8601String()),
                                        ),
                                      );

                                      setState(
                                        () =>
                                            _controller.text = DateFormat(
                                              'dd-MM-yyyy',
                                            ).format(day),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
          ),
    );
  }
}
