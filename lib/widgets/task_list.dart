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
        TaskTile(text: 'Tarea 1'),
        TaskTile(text: 'Tarea 2'),
        TaskTile(text: 'Tarea 3')
      ],
    );
  }
}