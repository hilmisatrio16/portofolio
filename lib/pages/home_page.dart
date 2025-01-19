import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/colors.dart';
import 'package:my_portofolio/constants/nav_items.dart';
import 'package:my_portofolio/constants/project_items.dart';
import 'package:my_portofolio/constants/skill_items.dart';
import 'package:my_portofolio/constants/text_value.dart';
import 'package:my_portofolio/widgets/project_card.dart';
import 'package:my_portofolio/widgets/skill_card.dart';

import '../widgets/carousel_skills.dart';
import 'dart:js' as js;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      backgroundColor: CustomColor.darkBlue,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Header Nav
            Container(
              height: 60.0,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: CustomColor.navColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < navItems.length; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              navItems[i],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: CustomColor.whitePrimary,
                              ),
                            )),
                      )
                  ],
                ),
              ),
            ),
            //MAIN
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              height: screenSize.height,
              child: Stack(
                children: [
                  Positioned(
                      left: -90,
                      top: 70,
                      child: Container(
                        width: 450,
                        height: 450,
                        decoration: BoxDecoration(
                            color: CustomColor.pink, shape: BoxShape.circle),
                      )),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    child: Row(
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
                    ),
                  ),
                ],
              ),
            ),
            //Experiences
            const SizedBox(
              height: 10,
            ),
            Wrap(children: [
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
                        decoration:
                            BoxDecoration(color: CustomColor.whitePrimary),
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
                  Container(
                    width: screenWidth / 1.6,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomColor.fullDarkBlue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/bangkit.png",
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      bangkitExperience,
                                      style: TextStyle(
                                          color: CustomColor.whitePrimary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Text(
                                      "14 Agu 2023 - 31 Des 2023",
                                      style: TextStyle(
                                          color: CustomColor.whitePrimary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w100),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          for (int i = 0; i < 7; i++)
                            ListTile(
                              leading: Icon(
                                Icons.circle,
                                size: 10,
                                color: CustomColor.whitePrimary,
                              ),
                              title: Text(
                                lorem,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: CustomColor.whitePrimary,
                                    fontWeight: FontWeight.w100),
                              ),
                            )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ]),
            //SKILLS
            const SizedBox(
              height: 10,
            ),
            Wrap(children: [
              Column(
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
                        decoration:
                            BoxDecoration(color: CustomColor.whitePrimary),
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
                      height: screenSize.height,
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      decoration: BoxDecoration(),
                      alignment: Alignment.center,
                      child: Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          alignment: WrapAlignment.center,
                          children: [
                            for (int i = 0; i < skillItems.length; i++)
                              skillItems[i]
                          ])),
                ],
              ),
            ]),
            //PROJECT
            const SizedBox(
              height: 40,
            ),
            Wrap(
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
                            decoration:
                                BoxDecoration(color: CustomColor.whitePrimary),
                          ),
                          Container(
                            width: 110,
                            height: 6,
                            decoration: BoxDecoration(color: CustomColor.pink),
                          ),
                          Container(
                            width: 110,
                            height: 6,
                            decoration:
                                BoxDecoration(color: CustomColor.navColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                      )
                    ],
                  ),
                ]),
            SizedBox(
              height: 20,
            ),

            Container(
              height: 200,
              child: Column(children: [
                Text(
                  "Social Media",
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
                      decoration:
                          BoxDecoration(color: CustomColor.whitePrimary),
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
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                            'open', ["https://github.com/hilmisatrio16"]);
                      },
                      child: Image.asset(
                        "assets/github.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        js.context.callMethod('open',
                            ["https://www.linkedin.com/in/mhilmisatrio"]);
                      },
                      child: Image.asset(
                        "assets/linkedin.png",
                        width: 50,
                        height: 50,
                      ),
                    )
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: screenWidth,
              decoration: BoxDecoration(
                color: CustomColor.fullDarkBlue.withOpacity(0.8),
              ),
              child: Text(
                "created using Flutter in 2025",
                style: TextStyle(
                    color: CustomColor.whitePrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
