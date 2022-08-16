import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'package:bmi_weight_managment_flutter/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);
enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;


  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;
  //
  // // 1= male , 2 = female
  // void updateColour(Gender selectedGender){
  //   //male card pressed
  //   if (selectedGender == Gender.male) {
  //     if(maleCardColour == inactiveCardColour){
  //       maleCardColour == activeCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     }else{
  //       maleCardColour = inactiveCardColour;
  //     }
  //   }
  //   // female card pressed
  //   if(selectedGender == Gender.female ){
  //     if(femaleCardColour == inactiveCardColour){
  //       femaleCardColour = activeCardColour;
  //       maleCardColour = inactiveCardColour;
  //     }else{
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState((){
                        selectedGender = Gender.male;
                        });

                      },
                        colour: selectedGender == Gender.male ? activeCardColour : inactiveCardColour,
                        cardChild: IconsContent(icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                        )
                    )),
                Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState((){
                          selectedGender = Gender.female;
                        });
                      },
                  colour: selectedGender == Gender.female ? activeCardColour : inactiveCardColour,
                      cardChild: IconsContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: activeCardColour,
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                )),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

