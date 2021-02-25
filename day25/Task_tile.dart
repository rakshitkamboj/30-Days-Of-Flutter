import 'Task_list.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
//(bool checkboxState) {
//setState(() {
//isChecked = checkboxState;
//});
//}
//TaskCheckBox(
//checkboxState: isChecked,
//toggleCheckboxState:
//),

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;
  TaskCheckBox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return null;
  }
}
