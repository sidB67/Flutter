import 'package:flutter/material.dart';
import 'init_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover)),
              child: Scaffold(
                backgroundColor:Colors.transparent ,
          body: Start()),
      )
    );
  }
}

