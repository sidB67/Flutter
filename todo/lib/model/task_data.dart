import 'package:flutter/foundation.dart';
import 'task.dart';
class TaskData extends ChangeNotifier{
   List<Task> tasks = [
    
  ];

  int get Count{
    return tasks.length;
  }

  void addTask(String newTaskTitle){
    final task= Task(name: newTaskTitle,isDone: false);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
    
  }
}