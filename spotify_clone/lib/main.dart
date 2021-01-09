import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/search.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
void main() {
  runApp(SpotifyApp());
}

class SpotifyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context)=> LoginScreen(),
        'home': (context)=> HomeScreen(),
        'search': (context)=> Search(),
      },
      initialRoute: 'login',
      

    );
  }
}

