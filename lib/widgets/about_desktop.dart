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
          margin: EdgeInsets.only(top: 200, left: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hai 👋\nI'm Muhammad Hilmi Satrio",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                    letterSpacing: 0.8),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Mobile Developer",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 94, 93, 93),
                    letterSpacing: 0.8),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                aboutMe,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: CustomColor.whitePrimary,
                    letterSpacing: 0.8),
              )
            ],
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
