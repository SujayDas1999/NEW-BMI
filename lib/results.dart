import 'package:bmi_calculator/inputPage.dart';
import 'package:flutter/material.dart';
import 'contants.dart';
import 'reusable_card.dart';
class Results extends StatelessWidget {

  Results({@required this.bmiResult,@required this.resultText,@required this.interpretaionText});

  final String bmiResult;
  final String resultText;
  final String interpretaionText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),style: resultTextStyle,),
                  Text(bmiResult,style:bmiTextStyle ,),
                  Text(interpretaionText,textAlign: TextAlign.center,style: bodyTextStyle,)
                ],
              ),),
          ),
          BottomButton(onTap:(){ Navigator.pop(context);}, buttonTitle: 'Recalculate' ),  
        ],
      ),
    );
  }
}
