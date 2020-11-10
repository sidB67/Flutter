import 'package:bmi_calculator/bottom_button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'input_page.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.inter});
  final String bmiResult;
  final String resultText;
  final String inter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                    'Your Result',
                  style: titleText,
                ),
              ),
          ),
          Expanded(
             flex: 5, 
              child: ResuableCard(
                  colour: colour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: bmiTextStyle,
                    ),
                    Text(
                      inter,
                      style: TextStyle(fontSize: 22.0,),
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),

              ),
          ),
           BottomButton(
                      text: 'Calculate Again',
                      onpress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
                      },
                    ),
        ],
      ),
    );
  }
}
