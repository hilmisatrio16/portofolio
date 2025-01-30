import 'package:flutter/material.dart';
import 'package:my_portofolio/widgets/experience_card.dart';

import '../constants/colors.dart';
import '../constants/experience_items.dart';

class ExperinceContainer extends StatelessWidget {
  const ExperinceContainer({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Column(
        children: [
          Text(
            "Experiences",
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
            height: 40,
          ),
          //card experiences
          for (int i = 0; i < listExperience.length; i++)
            ExperienceCard(
                experience: listExperience[i], screenWidth: screenWidth)
        ],
      ),
    ]);
  }
}
