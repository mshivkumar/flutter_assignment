import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_assignment_freepsace/utils/constants.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _calendarController;
  List<int> _weekendDays;
  Map<DateTime, List> _events;
  List _selectedEvents;
  var _calendarViewModel;

  @override
  void initState() {
    super.initState();
    _calendarController = new CalendarController();
    _weekendDays = [DateTime.sunday];
    final _selectedDay = DateTime.now();
    _events = {
      _selectedDay.add(Duration(days: 1)): [
        'Work from Office',
      ],
      _selectedDay.add(Duration(days: 2)): ['Work form office'],
      _selectedDay.add(Duration(days: 3)): ['Work form office'],
    };
    _selectedEvents = _events[_selectedDay] ?? [];
  }

  Widget _buildEventsMarker(DateTime date) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: accentColor,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );
  }

  void _onDaySelected(DateTime day, List events, List holidays) {
    setState(() {
      // This list is not been used for now
      _selectedEvents = events;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarController: _calendarController,
      events: _events,
      weekendDays: _weekendDays,
      initialCalendarFormat: CalendarFormat.week,
      formatAnimation: FormatAnimation.slide,
      startingDayOfWeek: StartingDayOfWeek.sunday,
      availableCalendarFormats: {CalendarFormat.week: ''},
      calendarStyle: CalendarStyle(
          selectedColor: accentColor,
          selectedStyle: TextStyle(color: Colors.black),
          todayStyle: TextStyle(color: Colors.black)),
      builders: CalendarBuilders(
        selectedDayBuilder: (context, date, events) => Container(
          margin: const EdgeInsets.all(4.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: accentColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: accentColor, width: 2.0),
          ),
          child: Text(
            date.day.toString(),
          ),
        ),
        todayDayBuilder: (context, date, events) => Container(
          margin: const EdgeInsets.all(4.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(
              width: 2,
              color: accentColor,
              style: BorderStyle.solid,
            ),
          ),
          child: Text(
            date.day.toString(),
          ),
        ),
        markersBuilder: (context, date, events, holidays) {
          final children = <Widget>[];
          if (events != null && events.isNotEmpty) {
            children.add(
              Positioned(
                right: 10.0,
                top: 10.0,
                child: _buildEventsMarker(date),
              ),
            );
          }
          return children;
        },
      ),
      onDaySelected: _onDaySelected,
    );
  }
}
