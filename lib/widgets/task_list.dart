import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatelessWidget {
  List<Task> tasks;
  final Function(bool?, int) checkBoxCallBack;
  TasksList({
    required this.tasks,
    required this.checkBoxCallBack,
  });
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          checkBoxCallBack: (newValue) {
            checkBoxCallBack(newValue, index);
          },
          isChecked: tasks[index].isDone,
        );
      },
      itemCount: tasks.length,
    );
  }
}
