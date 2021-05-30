import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  DateTimePicker({Key key}) : super(key: key);

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('Pick Date'),
        onPressed: () => {},
      ),
    );
  }
}
