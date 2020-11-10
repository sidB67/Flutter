import 'package:flutter/material.dart';
import 'constants.dart';
class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.colour, this.cardChild, this.onpress});
  final Color colour;
  final Widget cardChild;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colour
        ),
      ),
    );
  }
}