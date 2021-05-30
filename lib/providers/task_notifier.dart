import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_anything/models/task.dart';
import 'package:learn_anything/services/taskdb_service.dart';

final tasksNotifierProvider = StateNotifierProvider((ref) => TasksNotifier());

class TasksNotifier extends StateNotifier<List<Task>> {
  TasksNotifier() : super([]);

  void create(Task task) {
    state = [...state, task];
  }

  // Future<Task> getById(String id) async {}

  void update(Task task, String id) {}

  void delete(String id) {
    for (final task in state) {
      // if(task)
    }
  }
}
