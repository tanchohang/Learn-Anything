import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_anything/components/auth_wrapper.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:learn_anything/services/auth_service.dart';
import 'package:learn_anything/services/taskdb_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final authStateProvider = StreamProvider.autoDispose<User>((ref) {
  return AuthService(ref.watch(firebaseAuthProvider)).authStateChanges;
});

final authserviceProvider = Provider<AuthService>((ref) {
  return AuthService(ref.read(firebaseAuthProvider));
});

final taskdbServiceProvider = Provider<TaskDBService>((ref) {
  return TaskDBService();
});

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Anything',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Initializer(),
      // routes: {
      //   '/': (context) => AuthWrapper(),
      //   '/home': (context) => HomeScreen(),
      //   '/task': (context) => TaskScreen(),
      //   '/create-task': (context) => CreateTaskScreen(),
      //   '/profile': (context) => ProfileScreen()
      // },
    );
  }
}

class Initializer extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Something went wrong'),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return AuthWrapper();
          }
          return Scaffold(
            body: Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        });
  }
}
