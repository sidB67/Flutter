import 'package:flutter/material.dart';
import 'package:todo/model/task_data.dart';
import 'tasks_tile.dart';
import 'package:todo/model/task.dart';
import 'package:provider/provider.dart';
class TaskList extends StatefulWidget {
  
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          task: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback:(checkboxState){
          Provider.of<TaskData>(context,listen: false).updateTask(Provider.of<TaskData>(context,listen: false).tasks[index]);
  },
        longPressCallback: (){
          Provider.of<TaskData>(context,listen: false).deleteTask(Provider.of<TaskData>(context,listen: false).tasks[index]);
        },
        );
      },
      itemCount:Provider.of<TaskData>(context,listen: false).tasks.length,
    );
  }
}
