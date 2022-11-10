import 'package:flutter/cupertino.dart';

class CalculateDays {

  CalculateDays({this.from, this.to});

  final from;
  final to;

  int totalDays = 0;
  int d = 0;
  int m = 0;
  int y = 0;

  String daysBetween () {

    totalDays = (to.difference(from).inHours/24).round();
    totalDays = totalDays.abs();

    int x = totalDays;
    y = (x/365).round();
    x = x%365;
    m = (x/30).round();
    d = x%30;

    return totalDays.toString();
  }

  String days() {
    return d.toString();
  }

  String months() {
    return m.toString();
  }

  String years() {
    return y.toString();
  }

}