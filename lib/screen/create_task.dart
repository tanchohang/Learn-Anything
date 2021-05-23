import 'package:flutter/material.dart';

class CreateTaskScreen extends StatefulWidget {
  CreateTaskScreen({Key key}) : super(key: key);

  @override
  _CreateTaskScreenState createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('create'),
      ),
    );
  }
}
