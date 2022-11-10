import 'package:flutter/material.dart';
import 'constants.dart';

class YearButton extends StatelessWidget {
  YearButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
      ),
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 30.0,
        height: 30.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: kButtonFillColor,
    );
  }
}

