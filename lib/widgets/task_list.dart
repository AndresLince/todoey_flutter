import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task task = taskData.getTask(index);
            return TaskTile(
              taskTitle: task.name,
              checkBoxCallBack: (newValue) {
                taskData.updateTask(task);
              },
              isChecked: task.isDone,
              onLongPress: () {
                taskData.removeTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}
