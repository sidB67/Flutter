import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child:Text("It's Me Mario") ,
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/index.png')
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}
