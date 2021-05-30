import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_anything/models/task.dart';

final taskdbServiceProvider = Provider<TaskDBService>((ref) {
  return TaskDBService(ref.read);
});

final taskStreamProvider = StreamProvider<List<Task>>((ref) {
  return ref.read(taskdbServiceProvider).streamread();
});

class TaskDBService {
  final Reader _reader;

  TaskDBService(this._reader);

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> create(Task task, String uid) {
    return users
        .doc('iBnPZFCb2jaRMV6XXefEqWGGG5h2')
        .collection('tasks')
        .add(task.toJson())
        .then((value) => print("Task Added"))
        .catchError((err) => print("failed to add task"));
  }

  Stream<List<Task>> streamread() {
    var ref = users.doc('iBnPZFCb2jaRMV6XXefEqWGGG5h2').collection('tasks');
    return ref.snapshots().map((snapshot) => snapshot.docs
        .map((DocumentSnapshot<Map<String, dynamic>> task) =>
            Task.fromJson(task.data()))
        .toList());

    // .catchError((err) => print("failed to fetch"));
  }

  Future<List<Task>> read() {
    var ref = users.doc('iBnPZFCb2jaRMV6XXefEqWGGG5h2').collection('tasks');
    return ref.get().then((snapshot) =>
        snapshot.docs.map((doc) => Task.fromJson(doc.data())).toList());
  }

  Future<void> update(Task task) {
    return users
        .add(task)
        .then((value) => print("Task Added"))
        .catchError((err) => print("failed to add task:$task"));
  }

  Future<void> delete(String id) {
    var ref = users.doc('iBnPZFCb2jaRMV6XXefEqWGGG5h2').collection('tasks');

    return ref
        .doc(id)
        .delete()
        .then((value) => print("Task Deleted"))
        .catchError((err) => print("failed to delete"));
  }
}
