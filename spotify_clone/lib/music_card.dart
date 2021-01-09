import 'package:flutter/material.dart';
class MusicCard extends StatelessWidget {
 final String title;
 final String path;
 MusicCard({this.title,this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 10.0,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            fit: BoxFit.contain,
            image: AssetImage(path),
          ),
          SizedBox(width: 10,),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}