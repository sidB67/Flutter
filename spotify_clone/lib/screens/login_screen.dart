import 'package:flutter/material.dart';
import 'package:spotify_clone/RoundedButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141414),
      body: SafeArea(
        child: Column(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 150.0),
                  Center(
                    child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Millions of Songs.',
                    style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
                    ),
                  ),
                  Text(
                    'Free on Spotify.',
                    style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height:50),
            Expanded(
                flex: 2,
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RoundedButton(
                      border: false,
                      child: Text(
                        'Sign up for free',
                        style: TextStyle(color: Colors.white),
                      ),
                      colors: Color(0xff1DB954),
                      onPress: () {},
                    ),
                    RoundedButton(// press to open home page
                      border: true,
                      colors: Color(0xff141414),
                      onPress: () {
                        Navigator.pushNamed(context, 'home');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          // SizedBox(
                          //   width: 70.0,
                          // ),
                          Text('Continue with phone number',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              )),
                        ],
                      ),
                    ),
                    RoundedButton(
                      border: true,
                      colors: Color(0xff141414),
                      onPress: () {},
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 95.0,
                          ),
                          Text('Continue with Google',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    RoundedButton(
                      border: true,
                      colors: Color(0xff141414),
                      onPress: () {},
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 90.0,
                          ),
                          Text('Continue with Facebook',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    RoundedButton(//Press to open search
                      border: false,
                      colors: Color(0xff141414),
                      onPress: () {
                        Navigator.pushNamed(context, 'search');
                      },
                      child: Center(
                        child: Text(
                          'Log in', 
                          style: TextStyle(color: Colors.white),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
