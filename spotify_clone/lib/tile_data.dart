import 'package:flutter/material.dart';

List <Widget> tile = [
  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      
      Container(
        height: 200,
        width: 200,
        child: Image(
          image: AssetImage('images/Anime.jpeg'),
        ),
      ),
       Text(
        'Anime',
        style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
      ),
    ],
  ),
  
  Column(
    children: [
      Container(
         height: 200,
        width: 200,
        child: Image(
          image: AssetImage('images/Anime.jpeg'),
        ),
      ),
      Text(
        'Hindi',
        style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
      ),
    ],
  ),
   
  Column(
    children: [
      Container(
         height: 200,
        width: 200,
        child: Image(
          image: AssetImage('images/Anime.jpeg'),
        ),
      ),
       Text(
        'English',
        style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
      ),
    ],
  ),
];
