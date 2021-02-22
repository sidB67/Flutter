import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_clone/const.dart';
import 'package:spotify_clone/music_card.dart';
import 'package:spotify_clone/tile.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int changeScreen(int a){
      if(a==0){
        Navigator.pushNamed(context, 'home');

      }
      else if(a==1){
        Navigator.pushNamed(context, 'search');
      }
    }
    return Scaffold(
      backgroundColor: Color(0xff141414),
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Good Evening',
                  style: kHomeStyle,
                ),
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
            childAspectRatio: 2.5,
            mainAxisSpacing: 10,
            padding: EdgeInsets.all(10),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            physics:
                NeverScrollableScrollPhysics(), // to disable GridView's scrolling
            shrinkWrap: true, // You won't see infinite size error
            children: <Widget>[
              MusicCard(
                title: 'Anime',
                path: 'images/Anime.jpeg',
              ),
              MusicCard(
                title: 'English',
                path: 'images/Anime.jpeg',
              ),
              MusicCard(
                title: 'Hindi',
                path: 'images/Anime.jpeg',
              ),
              MusicCard(
                title: 'Punjabi',
                path: 'images/Anime.jpeg',
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Text(
                    'Recently Played',
                    style: kHomeStyle,
                  ),
          ),

          Tile(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Text(
                    'Recently Played',
                    style: kHomeStyle,
                  ),
          ),
          Tile(),
        ],
      ),
    );
  }
}


