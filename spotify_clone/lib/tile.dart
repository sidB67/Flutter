import 'package:flutter/material.dart';
import 'tile_data.dart';
class Tile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
          child: Row(
        children: [
          tile[0],
          SizedBox(width: 20),
          tile[1],
          SizedBox(width: 20),
          tile[2],
        ],
      ),
    );
  }
}