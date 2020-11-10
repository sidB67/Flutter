import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({this.text,this.onpress});
  final String text;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        color: bottomcolor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottom,
        child: Center(
          child: Text(
            text,
            style: largeButton,
          ),
        ),
      ),
    );
  }
}