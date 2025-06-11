import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/features/activities/domain/time.dart';
import 'package:intl/intl.dart';
import 'package:ibuclubs_mobile/core/presentation/form/form.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/features/activities/application/activities_bloc.dart';

class TimePickerField extends StatefulWidget {
  final String hint;
  final ValueFormField<Time> formField;

  const TimePickerField({
    super.key,
    required this.formField,
    required this.hint,
  });

  @override
  State<TimePickerField> createState() => _TimePickerFieldState();
}

class _TimePickerFieldState extends State<TimePickerField> {
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
            : DateFormat('HH:mm').format(
              DateFormat('HH:mm:ss').parse(widget.formField.input.value),
            );

    return TextFormField(
      controller: _controller,
      style: const TextStyle(fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.access_time_rounded,
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
      onTap: () async {
        final initialTime =
            widget.formField.input.value.isEmpty
                ? TimeOfDay.now()
                : TimeOfDay.fromDateTime(
                  DateFormat('HH:mm:ss').parse(widget.formField.input.value),
                );

        final picked = await showTimePicker(
          context: context,
          initialTime: initialTime,
          builder:
              (context, child) => Theme(
                data: Theme.of(context).copyWith(
                  timePickerTheme: TimePickerThemeData(
                    hourMinuteTextColor: kPrimaryColor,
                    hourMinuteColor: kPrimaryColor.withOpacity(0.1),
                    dialHandColor: kPrimaryColor,
                    dialBackgroundColor: Colors.white,
                    entryModeIconColor: kPrimaryColor,
                    inputDecorationTheme: InputDecorationTheme(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor, width: 2),
                        borderRadius: kDefaultBorderRadius,
                      ),
                    ),
                  ),
                  textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                      foregroundColor: kPrimaryColor,
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                child: child!,
              ),
        );

        if (picked != null) {
          final timeStr = picked.format(context);
          final fullTime =
              '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}:00';

          context.read<ActivitiesBloc>().add(
            ActivitiesEvent.timeChanged(Time(fullTime)),
          );

          setState(() => _controller.text = timeStr);
        }
      },
    );
  }
}
