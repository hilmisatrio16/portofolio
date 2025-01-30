import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_value.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: screenWidth / 3,
          margin: EdgeInsets.only(top: 160, left: 140),
          child: FadeIn(
            animate: true,
            duration: Duration(microseconds: 1000),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hai 👋\nI'm Muhammad Hilmi Satrio",
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                      color: CustomColor.whitePrimary,
                      letterSpacing: 0.8),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Mobile Developer",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 94, 93, 93),
                      letterSpacing: 0.8),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Image.asset(
          "assets/programmer.png",
          width: screenWidth / 3,
        )
      ],
    );
  }
}
