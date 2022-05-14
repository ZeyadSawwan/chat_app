import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  Widget customText(
      {required text,
      required double fonstSize,
      bool isBold = false,
      Color color = Colors.white}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fonstSize,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          color: color),
    );
  }
}
