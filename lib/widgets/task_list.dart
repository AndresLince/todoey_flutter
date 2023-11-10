import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          checkBoxCallBack: (newValue) {
            //checkBoxCallBack(newValue, index);
          },
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
