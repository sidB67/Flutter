import 'package:flutter/material.dart';
import 'package:spotify_clone/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Search extends StatelessWidget {
  
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
          backgroundColor: Color(0xff141414) ,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: 1,
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
            
          //   icon: Icon(FontAwesomeIcons.spotify,color:  Color(0xff141414),),
          //   label: 'Your Library',
          // ),
        ],

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Text(
                  'Search',
                  style: kSearchStyle,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      fillColor: Colors.white,
                      hintText: 'Artists, songs, or podcasts',
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Browse all',
                  style: kHomeStyle,
                ),
              ),
              Expanded(
                              child: GridView.builder(
            itemCount: 31,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 15.0, mainAxisSpacing: 20.0,childAspectRatio: 1.5),
            itemBuilder: (BuildContext context, int index){
                return Container(
                  padding: EdgeInsets.all(16.0),
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Music',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                );
            },
        ),
              ),
            ],
          ),
        ));
  }
}
