import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learn_anything/models/task.dart';

class TaskDBService {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> create(Task task, String uid) {
    return users
        .doc('iBnPZFCb2jaRMV6XXefEqWGGG5h2')
        .collection('tasks')
        .add(task.toJson())
        .then((value) => print("Task Added"))
        .catchError((err) => print("failed to add task"));
  }

  Stream<List<Task>> read() {
    var ref = users.doc('iBnPZFCb2jaRMV6XXefEqWGGG5h2').collection('tasks');
    return ref.snapshots().map((snapshot) => snapshot.docs
        .map((DocumentSnapshot<Map<String, dynamic>> task) =>
            Task.fromJson(task.data()))
        .toList());

    // .catchError((err) => print("failed to fetch"));
  }

  Future<void> update(Task task) {
    return users
        .add(task)
        .then((value) => print("Task Added"))
        .catchError((err) => print("failed to add task:$task"));
  }

  Future<void> delete(Task task) {
    return users
        .add(task)
        .then((value) => print("Task Added"))
        .catchError((err) => print("failed to add task:$task"));
  }
}
