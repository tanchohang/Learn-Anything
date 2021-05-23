import 'package:flutter/material.dart';
import 'package:learn_anything/components/AuthWrapper.dart';
import 'package:learn_anything/screen/create_task.dart';
import 'package:learn_anything/screen/home.dart';
import 'package:learn_anything/screen/landing.dart';
import 'package:learn_anything/screen/profile.dart';
import 'package:learn_anything/screen/task.dart';

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/': (context) => AuthWrapper(),
        '/home': (context) => HomeScreen(),
        '/task': (context) => TaskScreen(),
        '/create-task': (context) => CreateTaskScreen(),
        '/profile': (context) => ProfileScreen()
      },
    );
  }
}
