import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Expanded(
            flex: 2,
            child: Image(
              image: AssetImage('images/logo.png'),
              height: 100.0,
              width: 100.0,
            ),
          ),
          Expanded(
                      child: Text(
              'Miilions of songs.',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          )
        ],
      );
    
  }
}
