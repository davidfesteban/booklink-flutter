import 'package:flutter/material.dart';

class WorkScheduleWidget extends StatefulWidget {
  @override
  _WorkScheduleWidgetState createState() => _WorkScheduleWidgetState();
}

class _WorkScheduleWidgetState extends State<WorkScheduleWidget> {
  Map<String, Map<String, TimeOfDay>> schedule = {
    'Monday': {},
    'Tuesday': {},
    'Wednesday': {},
    'Thursday': {},
    'Friday': {},
    'Saturday': {},
    'Sunday': {},
  };

  void _setTime(String day, String field, TimeOfDay time) {
    setState(() {
      schedule[day]![field] = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: schedule.keys.map((day) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    day,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Start:'),
                      TimePickerWidget(
                        initialTime: schedule[day]!['start'],
                        onTimeSelected: (time) {
                          _setTime(day, 'start', time);
                        },
                      ),
                      Text('Stop:'),
                      TimePickerWidget(
                        initialTime: schedule[day]!['stop'],
                        onTimeSelected: (time) {
                          _setTime(day, 'stop', time);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Break Start:'),
                      TimePickerWidget(
                        initialTime: schedule[day]!['breakStart'],
                        onTimeSelected: (time) {
                          _setTime(day, 'breakStart', time);
                        },
                      ),
                      Text('Break Stop:'),
                      TimePickerWidget(
                        initialTime: schedule[day]!['breakStop'],
                        onTimeSelected: (time) {
                          _setTime(day, 'breakStop', time);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

typedef TimeSelectedCallback = void Function(TimeOfDay time);

class TimePickerWidget extends StatefulWidget {
  final TimeOfDay? initialTime;
  final TimeSelectedCallback onTimeSelected;

  TimePickerWidget({required this.onTimeSelected, this.initialTime});

  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedTime = widget.initialTime ?? TimeOfDay.now();
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
      widget.onTimeSelected(_selectedTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectTime(context);
      },
      child: Text(_selectedTime.format(context)),
    );
  }
}
