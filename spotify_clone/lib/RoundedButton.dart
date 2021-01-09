import 'package:flutter/material.dart';
import 'const.dart';
class RoundedButton extends StatelessWidget {

  
  final Color colors;
  final Function onPress;
  final Widget child;
  final bool border;
  RoundedButton({this.colors,this.onPress,this.child,this.border});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:2.0,horizontal:30.0),
      child: Material(
        // elevation: 5.0,
        color: colors,
        borderRadius: BorderRadius.circular(50.0),
        child: MaterialButton(
           onPressed: onPress,
            minWidth: 200.0,
            height: 42.0,
            child: child,
            shape: border?kBorderStyle:null,
        ),
      ),
    );
  }
}