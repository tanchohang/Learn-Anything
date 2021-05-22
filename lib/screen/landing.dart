import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFac92c),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 245,
              height: 245,
              color: Colors.red,
            ),
            Container(
              child: Text(
                'Keep Learning',
                style: TextStyle(
                    color: Color(0xFFF7F7F7),
                    fontSize: 34,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              width: 245,
              child: Text(
                'Everyday progress builds to a successful careeer',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFFF7F7F7),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Column(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('SIGN UP',
                        style: TextStyle(
                            color: Color(0xFFF7F7F7),
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  ),
                  OutlinedButton(
                    onLongPress: () {},
                    child: Text('LOGIN',
                        style: TextStyle(
                            color: Color(0xFFF7F7F7),
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
