import 'Task_list.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("This is a Task1"),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
