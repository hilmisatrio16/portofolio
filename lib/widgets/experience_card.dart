import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/experience_items.dart';

import '../constants/colors.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard(
      {super.key, required this.experience, required this.screenWidth});
  final Experience experience;
  final double screenWidth;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      width: (screenWidth < 600) ? screenWidth / 1.2 : screenWidth / 1.6,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: CustomColor.fullDarkBlue,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: CustomColor.fullDarkBlue,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Image.asset(
                    experience.imgAsset,
                    width: (screenWidth < 600) ? 100 : 140,
                    height: (screenWidth < 600) ? 100 : 140,
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        experience.title,
                        style: TextStyle(
                            color: CustomColor.whitePrimary,
                            fontSize: 18,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        experience.date,
                        style: TextStyle(
                            color: CustomColor.whitePrimary,
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 2,
              color: CustomColor.whitePrimary,
            ),
            for (int i = 0; i < experience.details.length; i++)
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 10,
                  color: CustomColor.whitePrimary,
                ),
                title: Text(
                  experience.details[i],
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.w300),
                ),
              )
          ],
        ),
      ),
    );
  }
}
