import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_value.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({
    super.key,
    required this.navbarKeys,
    required this.screenWidth,
  });

  final List<GlobalKey<State<StatefulWidget>>> navbarKeys;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarKeys.first,
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Column(children: [
        Text(
          "About Me",
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: CustomColor.whitePrimary),
        ),
        SizedBox(
          height: 14,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 6,
              decoration: BoxDecoration(color: CustomColor.whitePrimary),
            ),
            Container(
              width: 110,
              height: 6,
              decoration: BoxDecoration(color: CustomColor.pink),
            ),
            Container(
              width: 110,
              height: 6,
              decoration: BoxDecoration(color: CustomColor.navColor),
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: screenWidth / 1.5,
          child: Text(
            aboutMe,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: CustomColor.whitePrimary,
                letterSpacing: 0.8),
          ),
        ),
        SizedBox(
          height: 50,
        )
      ]),
    );
  }
}
