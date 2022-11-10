import 'package:flutter/material.dart';
import '../components/reusable_dart.dart';
import '../components/constants.dart';
import 'result_page.dart';
import '../components/value_button.dart';
import '../components/year_button.dart';
import 'package:date_calculator/components/bottom_button.dart';
import '../calculate_days.dart';

class InputPage extends StatefulWidget {

 @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  DateTime today = DateTime.now();
  int fromDay = 3;
  int fromMonth = 11;
  int fromYear = 2021;

  int toDay = 15;
  int toMonth = 06;
  int toYear = 2022;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
            child: Row (
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        const Text("DAY",
                          style: kLabelStyle,
                        ),
                        Text(fromDay.toString(),
                          style: kValStyle,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ValueButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  fromDay--;
                                  if (fromMonth == 1 || fromMonth == 3 || fromMonth == 5 || fromMonth == 7 || fromMonth == 8 || fromMonth == 10 || fromMonth == 12) {
                                    if (fromDay == 0) fromDay = 31;
                                  }
                                  else if (fromMonth == 4 || fromMonth == 6 || fromMonth == 9 || fromMonth == 11) {
                                    if (fromDay == 0) fromDay = 30;
                                  } else {
                                    if (fromYear%4 == 0) {
                                      if (fromDay == 0) fromDay = 29;
                                    } else {
                                      if (fromDay == 0) fromDay = 28;
                                    }
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            ValueButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  if (fromMonth == 1 || fromMonth == 3 || fromMonth == 5 || fromMonth == 7 || fromMonth == 8 || fromMonth == 10 || fromMonth == 12) {
                                    fromDay = (fromDay%31)+1;
                                  }
                                  else if (fromMonth == 4 || fromMonth == 6 || fromMonth == 9 || fromMonth == 11) {
                                    fromDay = (fromDay%30)+1;
                                  } else {
                                    if (fromYear%4 == 0) {
                                      fromDay = (fromDay%29)+1;
                                    } else {
                                      fromDay = (fromDay%28)+1;
                                    }
                                  }
                                });
                              },
                            ),
                          ],
                        ),

                      ],
                    ),
                    colour: kCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        const Text("MONTH",
                          style: kLabelStyle,
                        ),
                        Text(fromMonth.toString(),
                          style: kValStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ValueButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  fromMonth--;
                                  if (fromMonth <= 0) {
                                    fromMonth = 12;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            ValueButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  fromMonth = (fromMonth%12)+1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: kCardColour,
                  ),
                ),
              ],
            ),
          ),


          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  const Text("YEAR",
                    style: kLabelStyle,
                  ),

                  Text(fromYear.toString(),
                    style: kValStyle,
                  ),

                  Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      YearButton(
                        icon: Icons.remove,
                        onPressed: () {
                          setState(() {
                            --fromYear;
                          });
                        },
                      ),
                      YearButton(
                        icon: Icons.add,
                        onPressed: () {
                          setState(() {
                            ++fromYear;
                          });
                        },
                      ),

                    ],
                  ),
                ],
              ),
              colour: kCardColour,
            ),
          ),

          //to day and month
          Expanded(
            child: Row (
              children: <Widget> [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        const Text("DAY",
                          style: kLabelStyle,
                        ),
                        Text(toDay.toString(),
                          style: kValStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ValueButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  --toDay;
                                  if (toMonth == 1 || toMonth == 3 || toMonth == 5 || toMonth == 7 || toMonth == 8 || toMonth == 10 || toMonth == 12) {
                                    if (toDay == 0) toDay = 31;
                                  }
                                  else if (toMonth == 4 || toMonth == 6 || toMonth == 9 || toMonth == 11) {
                                    if (toDay == 0) toDay = 30;
                                  } else {
                                    if (toYear%4 == 0) {
                                      if (toDay == 0) toDay = 29;
                                    } else {
                                      if (toDay == 0) toDay = 28;
                                    }
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            ValueButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  if (toMonth == 1 || toMonth == 3 || toMonth == 5 || toMonth == 7 || toMonth == 8 || toMonth == 10 || toMonth == 12) {
                                    toDay = (toDay%31)+1;
                                  }
                                  else if (toMonth == 4 || toMonth == 6 || toMonth == 9 || toMonth == 11) {
                                    toDay = (toDay%30)+1;
                                  } else {
                                    if (toYear%4 == 0) {
                                      toDay = (toDay%29)+1;
                                    } else {
                                      toDay = (toDay%28)+1;
                                    }
                                  }

                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),

                    colour: kCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        const Text("MONTH",
                          style: kLabelStyle,
                        ),
                        Text(toMonth.toString(),
                          style: kValStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ValueButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  --toMonth;
                                  if (toMonth <= 0) {
                                    toMonth = 12;
                                  }
                                });
                              },

                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            ValueButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  toMonth = (toMonth%12)+1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: kCardColour,
                  ),
                ),
              ],
            ),
          ),

          //toYear card
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  const Text("YEAR",
                    style: kLabelStyle,
                  ),

                  Text(toYear.toString(),
                    style: kValStyle,
                  ),

                  Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      YearButton(
                        icon: Icons.remove,
                        onPressed: () {
                          setState(() {
                            --toYear;
                          });
                        },
                      ),
                      YearButton(
                        icon: Icons.add,
                        onPressed: () {
                          setState(() {
                            ++toYear;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              colour: kCardColour,
            ),
          ),

          //bottomButton
          BottomButton(
            buttonTitle: "CALCULATE",
            onTap: () {
              final from = DateTime(fromYear, fromMonth, fromDay);
              final to = DateTime(toYear, toMonth,toDay);
              CalculateDays obj = CalculateDays(from: from,to: to);
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  ResultPage(
                    totalDays: obj.daysBetween(), years: obj.years(), months: obj.months(), days: obj.days(),
                  )));
            },
          ),
        ],
      ),
    );
  }
}









