import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_value.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: screenWidth / 1.5,
          margin: EdgeInsets.only(top: 50, left: 50),
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
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Image.asset(
          "assets/programmer.png",
          width: screenWidth / 2,
        )
      ],
    );
  }
}
