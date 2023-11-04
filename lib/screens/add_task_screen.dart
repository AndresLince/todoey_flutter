import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          children: [
            Text('asda'),
            TextField(),
            MaterialButton(
              color: Colors.lightBlueAccent,
              onPressed: () {

              },
              minWidth: 300,
              height: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
