import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool isChecked = false;

  void checkboxCallback(bool? newValue) {
    setState(() {
      isChecked = newValue ?? true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'This is a task.',
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
          ),
        ),
        trailing: TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: (bool? newValue) {
            setState(() {
              isChecked = newValue ?? true;
            });
          }
        )
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({required this.checkboxState, required this.toggleCheckboxState});

  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightGreen,
      value: checkboxState,
      onChanged: toggleCheckboxState
  );
  }
}