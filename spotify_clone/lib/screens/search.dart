import 'package:flutter/material.dart';
import 'package:spotify_clone/const.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff141414),
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
