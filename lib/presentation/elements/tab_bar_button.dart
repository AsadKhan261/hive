import 'package:flutter/material.dart';
import 'package:hive/presentation/elements/custom_text.dart';

class TabBarButton extends StatelessWidget {
  String text;
  Color buttonColor;
  Color textColor;
  VoidCallback onPress;

  TabBarButton({required this.text, required this.buttonColor,required this.onPress,required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: buttonColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4),
          child: CustomText(
            text: text,
            color: textColor,

          ),
        ),
      ),
    );
  }
}
