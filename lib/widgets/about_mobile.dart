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
                "Muhammad Hilmi Satrio",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                    letterSpacing: 0.8),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                aboutMe,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: CustomColor.whitePrimary,
                    letterSpacing: 0.8),
              )
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
