import 'package:flutter/material.dart';
import 'package:learn_anything/services/auth_service.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFe8edf5),
      child: Container(
        child: Center(
          child: MaterialButton(
            color: Color(0xFFF15A42),
            textColor: Color(0xFFe8edf5),
            onPressed: () {
              this.authService.logout();
              Navigator.pushNamed(context, '/');
            },
            child: Text('Logout'),
          ),
        ),
      ),
    );
  }
}
