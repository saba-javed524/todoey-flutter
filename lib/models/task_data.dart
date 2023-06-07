import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    var tasks = UnmodifiableListView(_tasks);
    return tasks;
  }

  int get itemCount {
    return _tasks.length;
  }

  void addData(String newTaskTitle) {
    _tasks.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
