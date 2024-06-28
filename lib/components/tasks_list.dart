import 'package:flutter/material.dart';
import '../model/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({required this.tasks});

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          }
        );
      },
      itemCount: widget.tasks.length
    );
  }
}

// class TasksList extends StatelessWidget {
//   const TasksList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemBuilder: (context, index) {
//           return TaskTile(
//               taskTitle: tasks[index].name,
//               isChecked: tasks[index].isDone,
//               checkboxCallback: (checkboxState) {
//                 setState(() {
//                   tasks[index].toggleDone();
//                 });
//               }
//           );
//         },
//         itemCount: tasks.length
//     );
//   }
// }

