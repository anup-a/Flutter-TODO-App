import 'package:flutter/cupertino.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(title: "⚡ Item 1", isComplete: false),
    Task(title: "🐱‍ Item 2", isComplete: false),
    Task(title: "🦄 Item 4", isComplete: false),
  ];

  int taskLength() {
    return tasks.length;
  }

  void addTask(String taskTitle) {
    final Task task = Task(title: taskTitle, isComplete: false);
    tasks.add(task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleComplete();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
