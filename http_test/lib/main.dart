import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Future<void> getImage() async{
    Response res = await get('');
  }
  
  bool checkImg=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Center(
            child: checkImg==true?Image.network('http://servatom.com:5000/doorbell/click?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoic2lkIiwiZXhwIjoxNjE3MTIzNTQ1fQ.uVykuHRKeqcxaOL4kUf54LbBwQ09oHb9z4SNgp9keik'):Container(),
          ),
        ),
        FlatButton(
          onPressed: (){},
          child: Text('Get Image'),
        )
      ],
    
      
    )
    );
  }
}


