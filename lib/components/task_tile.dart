import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({required this.taskTitle, this.isChecked = false, required this.checkboxCallback});

  final String taskTitle;
  final bool isChecked;
  final Function(bool?) checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
          ),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightGreen,
            value: isChecked,
            onChanged: checkboxCallback
        )
    );
  }
}
