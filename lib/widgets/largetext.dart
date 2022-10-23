import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeText extends StatelessWidget {
  LargeText(
      {this.fontWeight = FontWeight.bold,
      this.fontsize = 24,
      required this.text});

  final String text;
  final double fontsize;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
        fontStyle: FontStyle.normal,
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: Colors.white,
      ),
    );
  }
}
