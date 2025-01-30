import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/project_items.dart';
import 'project_card.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
        // height: screenSize.height,
        children: [
          Column(
            children: [
              Text(
                "Projects",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.whitePrimary),
              ),
              SizedBox(
                height: 14,
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
                height: 100,
              ),
              Wrap(
                spacing: 12,
                runSpacing: 16,
                children: [
                  for (int i = 0; i < listProject.length; i++)
                    ProjectCard(
                      imgAsset: listProject[i].imgAsset,
                      titleApp: listProject[i].titleApp,
                      subTitleApp: listProject[i].subTitleApp,
                      projectDetails: listProject[i].projectDetails,
                    )
                ],
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ]);
  }
}
