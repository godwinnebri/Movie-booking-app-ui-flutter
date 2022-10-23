import 'package:flutter/material.dart';
import 'package:movie_app/widgets/smalltext.dart';

class categoryTag extends StatelessWidget {
  final String icon;
  final String text;

  // ignore: prefer_const_constructors_in_immutables
  categoryTag({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        //margin: EdgeInsets.only(left: 18),

        //width: 95,
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xff28283F),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 18, top: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmallText(
                text: icon,
                color: Colors.white,
                fontsize: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              SmallText(
                text: text,
                color: Colors.white,
                fontsize: 14,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
