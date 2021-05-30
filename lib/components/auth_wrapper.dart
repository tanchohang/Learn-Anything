import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_anything/screen/home.dart';
import 'package:learn_anything/screen/landing.dart';
import 'package:learn_anything/services/auth_service.dart';

class AuthWrapper extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _authState = watch(authStateProvider);
    return _authState.when(
        data: (user) {
          if (user != null) {
            return HomeScreen();
          } else {
            return LandingScreen();
          }
        },
        loading: () => Scaffold(
              body: Container(
                width: 20,
                height: 20,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        error: (_, __) => Scaffold(
              body: Center(
                child: Text(_.toString()),
              ),
            ));
  }
}
