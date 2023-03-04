import 'package:flutter/material.dart';

class AppButtton extends StatelessWidget {
  double width;
  String text;
  Color color;
  Color textColor;
  VoidCallback onPress;

  AppButtton(
      {required this.width,
      required this.text,
      required this.color,
      required this.onPress,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: width,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        )),
      ),
    );
  }
}
