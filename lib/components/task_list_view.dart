import 'package:flutter/material.dart';
import './task_item.dart';

class TaskListView extends StatelessWidget {
  TaskListView({this.tasksList});
  final tasksList;
  List<TaskItem> taskitemList = [];
  List<TaskItem> generateItems() {
    tasksList.forEach((task) {
      taskitemList.add(
        TaskItem(
          text: task['text'],
          isComplete: task['isComplete'],
        ),
      );
    });
    return taskitemList;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 35.0,
      ),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: generateItems(),
      ),
    );
  }
}
