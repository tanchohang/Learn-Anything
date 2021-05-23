import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/task');
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
              child: Text('title'),
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
