import 'package:flutter/material.dart';
import 'package:hack_tu/home_page.dart';
import 'package:hack_tu/login_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context)=> LoginScreen(),
        'home' : (context)=> HomePage(),
      },
      initialRoute: 'home',
    );
  }
}