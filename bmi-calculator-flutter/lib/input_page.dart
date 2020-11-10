import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'bottom_button.dart';


enum Gender{male,female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCard= inactiveCard;
  Color femaleCard= inactiveCard;
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age=18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(child: ResuableCard(
                    colour: selectedGender==Gender.male?colour:inactiveCard,
                      cardChild:IconContent(iconName: FontAwesomeIcons.mars, text: 'MALE'),
                    onpress: (){
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },
                  ),
                  ),
                  Expanded(child: ResuableCard(
                    colour: selectedGender==Gender.female?colour:inactiveCard,
                    cardChild: IconContent(
                        iconName: FontAwesomeIcons.venus,
                        text: 'FEMALE'),
                    onpress: (){
                      setState(() {
                        selectedGender=Gender.female;
                      });
                    },
                  ),
                  ),
                ],
              ),
          ),
          Expanded(child: ResuableCard(
              colour: colour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'HEIGHT',
                      style: labelTextStyle,
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: dispStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),

                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29eb1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),

                    child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue){
                              setState(() {
                                height=newValue.toInt();
                              });
                            }
                        ),
                  ),
                ],
              ),

          ),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: ResuableCard(
                      colour: colour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: dispStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              press: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              press: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                  Expanded(child: ResuableCard(
                      colour: colour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'AGE',
                            style: labelTextStyle,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: dispStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              press: (){
                                setState(() {
                                  if(age>0)
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              press: (){
                                setState(() {
                                  if(age<100)
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
          ),
          BottomButton(
            text: 'Calculate',
            onpress: (){
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(
                bmiResult:calc.calcBMI(),
                resultText:calc.getResult() ,
                inter:calc.getInter() ,
              )));
            },
          ),

        ],
      ),
      );



  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.press});
  final IconData icon;
  Function press;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed:press,
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}




