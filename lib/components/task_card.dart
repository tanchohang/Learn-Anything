import 'package:flutter/material.dart';
import 'package:learn_anything/models/task.dart';
import 'package:learn_anything/screen/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  const TaskCard({Key key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TaskScreen()));
      },
      child: Container(
        // decoration: BoxDecoration(
        //     border: Border.all(color: Color(0xFFF7F7F7)),
        //     borderRadius: BorderRadius.all(Radius.circular(8))),
        width: 120,
        height: 150,
        color: Color(0xFFF7F7F7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [Icon(Icons.pie_chart_outline)],
            ),
            Container(
              child: Text(task.name),
            ),
            Container(
              child: Container(
                color: Color(0xFFe8edf5),
                child: Text(
                  'CS',
                  style: TextStyle(color: Color(0xFFb2e0ac)),
                ),
              ),
            ),
            Container(
              child: Container(
                color: Color(0xFFF15A42),
                child: Text('Today, 10AM - 11AM'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
