import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        child:
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
                longPressCallback: () {
                    taskData.removeTask(task);
                },
              );
            },
            itemCount: taskData.taskCount
        );
      }
    );
  }
}
