import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {

  BottomButton ({required this.buttonTitle, required this.onTap});

  final String buttonTitle;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomButtonStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 5.0),
        width: double.infinity,
        height: kBottomContainerHeight,

      ),
    );
  }
}