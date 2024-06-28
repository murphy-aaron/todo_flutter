import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/model/task_data.dart';
import 'package:todo_flutter/screens/tasks_screen.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

