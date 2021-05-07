import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 314,
            height: 98,
            padding: EdgeInsets.fromLTRB(34, 54, 16, 0),
            child: Text(
              'BLAH BLAH BLAH',
              style:TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(36, 60, 36, 0),
          child: Container(
            
            width: 287,
            height: 130,
            padding: EdgeInsets.fromLTRB(61, 39, 60, 39),
            decoration: BoxDecoration(
              color: Color(0xff99eeff),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                'Student',
                style:TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
          ),
        ),
      ],
      )
    );
  }
}