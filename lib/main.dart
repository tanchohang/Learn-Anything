import 'package:flutter/material.dart';
import 'package:learn_anything/screen/create_task.dart';
import 'package:learn_anything/screen/home.dart';
import 'package:learn_anything/screen/landing.dart';
import 'package:learn_anything/screen/task.dart';

import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Anything',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/home': (context) => HomeScreen(),
        '/task': (context) => TaskScreen(),
        '/create-task': (context) => CreateTaskScreen()
      },
    );
  }
}
