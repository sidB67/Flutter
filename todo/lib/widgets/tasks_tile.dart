import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  
  final bool isChecked;
  final String task;
  final Function checkboxCallback;
  final Function longPressCallback;
  TaskTile({this.isChecked,this.task,this.checkboxCallback,this.longPressCallback});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        task,
        style: TextStyle(
          decoration: isChecked?TextDecoration.lineThrough:TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: checkboxCallback,
       
       
      
    ),
    );
  }
}


// void checkboxCallBack