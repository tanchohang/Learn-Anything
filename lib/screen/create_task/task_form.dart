import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_anything/models/task.dart';
import 'package:learn_anything/providers/task_notifier.dart';
import 'package:learn_anything/services/taskdb_service.dart';

final taskStateProvider = StateProvider<Task>((ref) {
  return Task();
});

final formStateProvider = StateProvider<GlobalKey<FormState>>((ref) {
  return GlobalKey<FormState>();
});

class TaskForm extends ConsumerWidget {
  const TaskForm({
    Key key,
  }) : super(key: key);

  // final _task = Task(complete: false, archive: false, status: 0);

  @override
  Widget build(BuildContext context, watch) {
    return Form(
        key: context.read(formStateProvider).state,
        child: Column(
          children: [
            buildName(context, watch),
            buildDescription(context, watch),
            // buildStartDate(context),
            // buildDateRangePicker(context),
            // Row(
            //   children: [
            // buildStartTimePicker(context),
            // buildEndTimePicker(context),
            // ],
            // ),
            ElevatedButton(
                onPressed: () {
                  final form =
                      context.read(formStateProvider).state.currentState;
                  if (form.validate()) {
                    form.save();
                    print('create');
                    context.read(taskdbServiceProvider).create(
                        context.read(taskStateProvider).state,
                        'iBnPZFCb2jaRMV6XXefEqWGGG5h2');

                    // List<Task> tasks = watch(tasksNotifierProvider);
                  }
                },
                child: Text('ADD TASK'))
          ],
        ));
  }

  Widget buildName(BuildContext context, ScopedReader watch) {
    return TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Name',
          labelStyle: TextStyle(color: Color(0xFFF7F7F7)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Name cannot be empty';
          }
          return null;
        },
        onSaved: (val) => context.read(taskStateProvider).state.name = val);
  }

  Widget buildDescription(BuildContext context, ScopedReader watch) {
    return TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Description',
          labelStyle: TextStyle(color: Color(0xFFF7F7F7)),
        ),
        onSaved: (val) =>
            context.read(taskStateProvider).state.description = val);
  }

  // Widget buildStartDate(BuildContext context) {
  //   return ElevatedButton(
  //     onPressed: () => pickDate(context),
  //     child: Text('Pick Date'),
  //   );
  // }

  // Future pickDate(BuildContext context) async {
  //   final initialDate = DateTime.now();
  //   final newDate = await showDatePicker(
  //       context: context,
  //       initialDate: initialDate,
  //       firstDate: DateTime(DateTime.now().year - 5),
  //       lastDate: DateTime(DateTime.now().year + 5));

  //   if (newDate == null) return;

  //   setState(() {
  //     _task.startDate = newDate;
  //     _task.endDate = newDate;
  //   });
  // }

  // Widget buildDateRangePicker(BuildContext context) {
  //   return ElevatedButton(
  //     onPressed: () => pickDateRange(context),
  //     child: Text('Pick Date Range'),
  //   );
  // }

  // Future pickDateRange(BuildContext context) async {
  //   final newDate = await showDateRangePicker(
  //       context: context,
  //       firstDate: DateTime.now(),
  //       lastDate: DateTime.now().add(Duration(days: 3)));

  //   if (newDate == null) return;

  //   setState(() {
  //     _task.startDate = newDate.start;
  //     _task.endDate = newDate.end;
  //   });
  // }

  // Widget buildStartTimePicker(BuildContext context) {
  //   return ElevatedButton(
  //     onPressed: () => pickStartTime(context),
  //     child: Text('Pick Time'),
  //   );
  // }

  // Future pickStartTime(BuildContext context) async {
  //   final initialTime = TimeOfDay(hour: 9, minute: 0);
  //   final startTime =
  //       await showTimePicker(context: context, initialTime: initialTime);

  //   if (startTime == null) return;

  //   setState(() {
  //     _task.startTime = startTime;
  //   });
  // }

  // Widget buildEndTimePicker(BuildContext context) {
  //   return ElevatedButton(
  //     onPressed: () => pickStartTime(context),
  //     child: Text('Pick End Time'),
  //   );
  // }

  // Future pickEndTime(BuildContext context) async {
  //   final initialTime = _task.startTime;
  //   final endTime =
  //       await showTimePicker(context: context, initialTime: initialTime);

  //   if (endTime == null) return;

  //   setState(() {
  //     _task.endTime = endTime;
  //   });
  // }

  // Widget buildVideos() {}

  // Widget buildReadings() {}

  // Widget buildCategories() {}

  // Widget buildDays() {}

  // Widget buildStatus() {}

  // Widget buildComplete() {}

  // Widget buildArchive() {}
}
