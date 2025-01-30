import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillContent extends StatelessWidget {
  const SkillContent({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Skills",
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
          Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(),
              alignment: Alignment.center,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    alignment: WrapAlignment.center,
                    children: [
                      for (int i = 0; i < skillItems.length; i++) skillItems[i]
                    ]),
              ])),
        ],
      ),
    ]);
  }
}
