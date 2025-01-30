import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'about_desktop.dart';
import 'about_mobile.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
    required this.screenSize,
    required this.screenWidth,
  });

  final Size screenSize;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      height: screenSize.height / 1,
      child: Stack(
        children: [
          Positioned(
            left: -90,
            top: 70,
            child: FadeIn(
              animate: true,
              child: Container(
                width: 450,
                height: 450,
                decoration: BoxDecoration(
                  color: CustomColor.pink,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: CustomColor.pink,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: (screenWidth < 600) ? AboutMobile() : AboutDesktop(),
          ),
        ],
      ),
    );
  }
}
