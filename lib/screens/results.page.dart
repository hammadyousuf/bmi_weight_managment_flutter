import 'package:flutter/material.dart';
import '../constant.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
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
                style: kTitleTextStyle,
              ),

            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column
                (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                        style: kResultTextStyle,
                  ),
                  Text(
                    '19.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI is very Low , You need to eat More',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
                
              ),
            ),
          ),
          ButtonBottom(buttonTitle: 'RECALCULATE',
          onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}