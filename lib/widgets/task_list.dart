import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = [
      Task(name: 'Tarea 1'),
      Task(name: 'Tarea 2'),
      Task(name: 'Tarea 3'),
    ];

    return ListView(
      children: [
        TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
        TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,),
        TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,),
      ],
    );
  }
}