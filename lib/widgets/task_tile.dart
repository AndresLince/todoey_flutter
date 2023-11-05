import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String text;
  const TaskTile({
    required this.text
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.text,
      style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough: null
      ),),
      trailing: TaskCheckBox(checkboxState: isChecked),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  TaskCheckBox({
    required this.checkboxState
  });
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (newValue) {
        //checkboxState = newValue;
      },
    );
  }
}