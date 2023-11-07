import 'package:flutter/material.dart';

import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function(Task?) addTaskCallBack;
  String newTaskName = '';
  AddTaskScreen({
    required this.addTaskCallBack,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                onChanged: (value) {
                  newTaskName = value;
                },
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ),
            ),
            MaterialButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                if (newTaskName != '') {
                  Task newTask = new Task(name: newTaskName);
                  addTaskCallBack(newTask);
                }
              },
              minWidth: 300,
              height: 70.0,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
