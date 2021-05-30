import 'dart:collection';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_anything/models/task.dart';

class TaskList extends StateNotifier<List<Task>> {
  TaskList([List<Task> initialTasks]) : super(initialTasks);

  List<Task> _taskList = [];

  Future create(Task task, String uid) async {
    // state = [...state, Task(name:)];
  }

  Stream<List<Task>> read(String uid) {}

  Future<Task> getById(String id) async {}

  Future updateProduct(Task task, String id) async {}

  Future delete(String id) async {}
}
