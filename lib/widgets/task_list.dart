import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Tarea 1'),
    Task(name: 'Tarea 2'),
    Task(name: 'Tarea 3'),
  ];
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          checkBoxCallBack: (newValue) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
          isChecked: tasks[index].isDone,
        );
      },
      itemCount: tasks.length,
    );
  }
}
