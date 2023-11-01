import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.list,
                size: 30,
              ),
              backgroundColor: Colors.white,
              radius: 30,
            ),
            Text('Todoey'),
          ],
        ),
      ),
    );
  }
}
