import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_anything/services/auth_service.dart';

class ProfileScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _authService = watch(authserviceProvider);
    return Container(
      color: Color(0xFFe8edf5),
      child: Container(
        child: Center(
          child: MaterialButton(
            color: Color(0xFFF15A42),
            textColor: Color(0xFFe8edf5),
            onPressed: () {
              _authService.logout();
              Navigator.pop(context);
            },
            child: Text('Logout'),
          ),
        ),
      ),
    );
  }
}
