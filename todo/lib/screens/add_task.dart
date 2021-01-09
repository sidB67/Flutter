import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_data.dart';
class AddTask extends StatefulWidget {
  
  
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'AddTask',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              onChanged: (value){
                task=value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            FlatButton(
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addTask(task);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
