import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  SmallText(
      {this.fontWeight = FontWeight.normal,
      this.fontsize = 15,
      required this.text,
      this.color = Colors.white,
      this.height = 1.0});

  final String text;
  final double fontsize;
  FontWeight fontWeight;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: GoogleFonts.plusJakartaSans(
        fontStyle: FontStyle.normal,
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: color,
        height: height,
      ),
    );
  }
}
