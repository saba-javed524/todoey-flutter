import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.taskTitle, this.isChecked, this.checkBoxCallback, this.onLongTap});

  bool? isChecked;
  String? taskTitle;
  Function(bool?)? checkBoxCallback;
  Function()? onLongTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongTap,
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration:
                isChecked! ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
