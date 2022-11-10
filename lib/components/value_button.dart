import 'package:flutter/material.dart';
import 'constants.dart';

class ValueButton extends StatelessWidget {

  ValueButton({required this.icon, required this.onPressed});

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
        width: 40.0,
        height: 40.0,
      ),
      shape: CircleBorder(),
      fillColor: kButtonFillColor,
    );
  }
}
