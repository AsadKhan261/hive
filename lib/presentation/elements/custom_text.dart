import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
String text;
Color? color;
double? fontSize;
FontWeight? fontWeight;

CustomText({required this.text,this.color,this.fontSize = 14,this.fontWeight});

@override
  Widget build(BuildContext context) {
    return Text(text,
    style: GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color
    )
    );
  }
}
