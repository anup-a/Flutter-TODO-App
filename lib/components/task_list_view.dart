import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theapp/models/task_data.dart';
import './task_item.dart';
import 'package:theapp/models/tasks.dart';

class TaskListView extends StatefulWidget {
  TaskListView({this.taskitemList});
  final taskitemList;

  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 35.0,
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TaskItem(
                text: taskData.tasks[index].title,
                isComplete: taskData.tasks[index].isComplete,
                toggleTask: (checkboxState) {
                  Provider.of<TaskData>(context, listen: false)
                      .toggleTask(taskData.tasks[index]);
                },
                longPressCallBack: () {
                  Provider.of<TaskData>(context, listen: false)
                      .deleteTask(taskData.tasks[index]);
                },
              );
            },
            itemCount: taskData.taskLength(),
          ),
        );
      },
    );
  }
}
