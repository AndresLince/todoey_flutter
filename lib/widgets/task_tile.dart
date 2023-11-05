import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String text;
  const TaskTile({
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {

  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue;
        });
      },
    );
  }
}