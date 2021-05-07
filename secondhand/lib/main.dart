import 'package:flutter/material.dart';
import 'package:secondhand/add.dart';
import 'package:secondhand/explore.dart';
import 'package:secondhand/homepage.dart';
import 'package:secondhand/startpage.dart';
import 'package:secondhand/product.dart';
import 'package:secondhand/signup.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'explore': (context)=>Explore(),
        'signup': (context)=>SignupPage(),
        'product': (context)=>Product(),
        'start':(context)=>StartPage(),
        'home':(context)=>HomePage(),
        'add': (context)=>AddScreen(),
      },
      initialRoute: 'start',
    );
  }
}
