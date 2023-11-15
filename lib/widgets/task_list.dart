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
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              checkBoxCallBack: (newValue) {
                //checkBoxCallBack(newValue, index);
              },
              isChecked: taskData.tasks[index].isDone,
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}
