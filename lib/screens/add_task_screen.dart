import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/model/task_data.dart';

import '../model/task.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  // final void Function(String) addTask;

  @override
  Widget build(BuildContext context) {

    String taskTitle = '';

    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 30.0
            ),
          ),
          TextField(
            onChanged: (value) {
              taskTitle = value;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightGreen,
                  width: 5.0
                )
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightGreen,
                  width: 5.0
                )
              )
            ),
          ),
          SizedBox(height: 10.0),
          SizedBox(
            width: 200.0,
            child: TextButton(
              onPressed: () {
                if (taskTitle != '') {
                  final newTask = Task(name: taskTitle);
                  Provider.of<TaskData>(context, listen: false).addTask(newTask);
                }
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
