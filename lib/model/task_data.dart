import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'Finish Flutter Course', isDone: true),
    Task(name: 'Update GitHub profile'),
    Task(name: 'Build recipe app'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task updatedTask) {
    updatedTask.toggleDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}