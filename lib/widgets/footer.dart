import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: screenWidth,
      decoration: BoxDecoration(
        color: CustomColor.fullDarkBlue.withOpacity(0.8),
      ),
      child: Text(
        "created using Flutter in 2025 by hilmisatrio",
        style: TextStyle(
            color: CustomColor.whitePrimary,
            fontSize: 16,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
