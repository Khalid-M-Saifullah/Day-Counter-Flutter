import 'package:date_calculator/components/reusable_dart.dart';
import 'package:flutter/material.dart';
import 'package:date_calculator/components/constants.dart';
import 'package:date_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.totalDays, required this.years, required this.months, required this.days});

  final String totalDays;
  final String years;
  final String months;
  final String days;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DAY COUNTER",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget> [
          const Expanded(
            child: Center(
              child: Text(
                "Your Result",
                style: kResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              colour: kCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Total",
                    style: kTotalTextStyle,
                  ),
                  Text(
                    totalDays+" Days",
                    style: kResultInDaysStyle,
                  ),
                  Text(
                     years+" year, "+months+" month, "+days+" days",
                    style: kResultInYearsStyle,
                  ),

                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RE-CALCULATE",
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}


