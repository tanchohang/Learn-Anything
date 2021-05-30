import 'package:flutter/material.dart';
import 'package:learn_anything/screen/create_task/task_form.dart';

class CreateTaskScreen extends StatelessWidget {
  CreateTaskScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        color: Color(0xFF2178ae),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Create New Task',
                  style: TextStyle(
                      color: Color(0xFFFF7F7F7),
                      decoration: TextDecoration.none,
                      fontSize: 24),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                  label: Text('Close'),
                )
              ],
            ),
            TaskForm()
          ],
        ),
      ),
    );
  }
}
