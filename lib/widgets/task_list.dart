import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        TaskTile(text: 'Tarea 1'),
        TaskTile(text: 'Tarea 2'),
        TaskTile(text: 'Tarea 3')
      ],
    );
  }
}