import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageDetail extends StatelessWidget {
  String image;

  ImageDetail(this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Detail',style: GoogleFonts.amiriQuran(
          color: Colors.black,
          fontSize: 20
        ),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(image),
      ),
    );
  }
}
