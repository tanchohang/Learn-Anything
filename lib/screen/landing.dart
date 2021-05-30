import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_anything/services/auth_service.dart';

class LandingScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _authService = watch(authserviceProvider);

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
                  MaterialButton(
                    color: Color(0xFFB2E0AC),
                    onPressed: () {},
                    child: Text('SIGN UP WITH EMAIL',
                        style: TextStyle(
                            color: Color(0xFFF7F7F7),
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  ),
                  MaterialButton(
                    color: Color(0xFFF15A42),
                    onPressed: () async {
                      _authService.signInWithGoogle();
                    },
                    child: Text('LOGIN WITH GOOGLE',
                        style: TextStyle(
                            color: Color(0xFFF7F7F7),
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  ),
                  MaterialButton(
                    color: Color(0xFF2178AE),
                    onPressed: () {},
                    child: Text('LOGIN WITH FACEBOOK',
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
