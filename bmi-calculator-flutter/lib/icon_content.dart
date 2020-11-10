import 'package:flutter/material.dart';
import 'constants.dart';
class IconContent extends StatelessWidget {
  IconContent({@required this.iconName, @required this.text});
  final IconData iconName;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}