import 'dart:math';

import 'package:flutter/material.dart';
class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calcBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25.0)
      return 'Overweight';
    else if(_bmi>18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInter(){
    if(_bmi>=25.0)
      return 'Higher than normal body weight';
    else if(_bmi>18.5)
      return 'Normal maintain this';
    else
      return 'Lower than normal body weight';
  }
}