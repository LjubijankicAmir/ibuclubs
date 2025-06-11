import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';

class CalendarView extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime firstDay;
  final DateTime lastDay;
  final Function(DateTime selectedDay, DateTime focusedDay) onDaySelected;

  const CalendarView({
    super.key,
    required this.focusedDay,
    required this.firstDay,
    required this.lastDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      startingDayOfWeek: StartingDayOfWeek.monday,
      focusedDay: focusedDay,
      firstDay: firstDay,
      lastDay: lastDay,
      selectedDayPredicate: (day) => isSameDay(day, focusedDay),
      enabledDayPredicate: (day) {
        final today = DateTime.now();
        final justDay = DateTime(day.year, day.month, day.day);
        final today0 = DateTime(today.year, today.month, today.day);
        return !justDay.isBefore(today0);
      },
      onDaySelected: onDaySelected,
      daysOfWeekHeight: 48,
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(
          fontSize: 18,
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
        weekendStyle: TextStyle(
          fontSize: 18,
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
        dowTextFormatter: (date, _) {
          final names = ["M", "T", "W", "T", "F", "S", "S"];
          return names[date.weekday - 1];
        },
      ),
      headerStyle: HeaderStyle(
        headerPadding: EdgeInsets.only(bottom: 20),
        leftChevronIcon: Icon(
          Icons.chevron_left_rounded,
          color: Colors.white,
          size: 18,
        ),
        rightChevronIcon: Icon(
          Icons.chevron_right_rounded,
          color: Colors.white,
          size: 18,
        ),
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        cellMargin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        tablePadding: EdgeInsets.only(bottom: 20),
        selectedDecoration: BoxDecoration(
          color: kPrimaryColor,
          shape: BoxShape.circle,
        ),
        selectedTextStyle: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        defaultTextStyle: TextStyle(
          fontSize: 18,
          color: Theme.of(context).primaryColorDark,
          fontWeight: FontWeight.bold,
        ),
        weekendTextStyle: TextStyle(
          fontSize: 18,
          color: Theme.of(context).primaryColorDark,
          fontWeight: FontWeight.bold,
        ),
        disabledTextStyle: TextStyle(
          fontSize: 18,
          color: Theme.of(context).primaryColorDark.withValues(alpha: 0.3),
          fontWeight: FontWeight.bold,
        ),
        outsideDaysVisible: false,
      ),
    );
  }
}
