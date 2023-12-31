import 'package:flutter/cupertino.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Tarea 1'),
    Task(name: 'Tarea 2'),
    Task(name: 'Tarea 3'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  void add(Task task) {
    _tasks.add(task);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  Task getTask(int index) {
    return _tasks[index];
  }

  void updateTask(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
