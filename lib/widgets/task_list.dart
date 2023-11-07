import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatelessWidget {
  List<Task> tasks;
  TasksList({
    required this.tasks,
  });
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          checkBoxCallBack: (newValue) {
            /*setState(() {
              tasks[index].toggleDone();
            });*/
          },
          isChecked: tasks[index].isDone,
        );
      },
      itemCount: tasks.length,
    );
  }
}
