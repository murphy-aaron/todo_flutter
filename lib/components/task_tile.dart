import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({required this.taskTitle, this.isChecked = false, required this.checkboxCallback, required this.longPressCallback});

  final String taskTitle;
  final bool isChecked;
  final Function(bool?) checkboxCallback;
  final Function() longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
        ),
    );
  }
}
