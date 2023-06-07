import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  List? tasks;
  TasksList({this.tasks});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = TaskData.tasks[index];
            return TaskTile(
                taskTitle: task.title,
                isChecked: task.isDone,
                checkBoxCallback: (value) {
                  TaskData.updateTask(task);
                },
                onLongTap: () {
                  TaskData.deleteTask(task);
                });
          },
          itemCount: TaskData.itemCount,
        );
      },
    );
  }
}
