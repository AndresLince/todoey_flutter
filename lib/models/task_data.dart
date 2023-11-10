import 'package:flutter/cupertino.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Tarea 1'),
    Task(name: 'Tarea 2'),
    Task(name: 'Tarea 3'),
  ];
}