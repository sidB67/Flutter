
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:spotlight_carousel/spotlight_carousel.dart';
class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> img=[
        GestureDetector(child: Image(image: AssetImage('images/Anime.jpeg'),),onTap: (){Navigator.pushNamed(context, 'login');},),
        Image(image: AssetImage('images/Anime.jpeg'),),
        Image(image: AssetImage('images/Anime.jpeg'),),
    ];
    List<String> titles=[
      'Programming',
      'Hackathon',
      'Programing',
      
    ];
    void changeScreen(int a){
      if(a==0){
        Navigator.pushNamed(context, 'home');

      }
      else if(a==1){
        Navigator.pushNamed(context, 'search');
      }
    }
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int n){
          changeScreen(n);
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        backgroundColor: Color(0xff141414),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.music),
            label: 'Your Library',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(FontAwesomeIcons.spotify),
          //   label: 'Your Library',
          // ),
        ],
      ),
      body: SpotlightCarousel(images: img, titles: titles, descriptions: null) ,
    );
  }
}


