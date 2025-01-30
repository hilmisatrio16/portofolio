import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/colors.dart';
import 'package:my_portofolio/constants/nav_items.dart';

// ignore: avoid_web_libraries_in_flutter

import '../widgets/about_content.dart';
import '../widgets/experience_container.dart';
import '../widgets/footer.dart';
import '../widgets/home_content.dart';
import '../widgets/project_content.dart';
import '../widgets/skill_content.dart';
import '../widgets/social_media.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollControl = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      backgroundColor: CustomColor.darkBlue,
      body: SingleChildScrollView(
        controller: scrollControl,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Header Nav
            SizedBox(),
            if (screenWidth > 600)
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
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: CustomColor.navColor,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < navItems.length; i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: TextButton(
                              onPressed: () {
                                scrollToSection(i);
                              },
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
            if (screenWidth <= 600)
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(0, 26, 26, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      color: CustomColor.fullDarkBlue, // Warna latar belakang
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      focusColor: CustomColor.fullDarkBlue,
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.menu,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            //MAIN
            HomeContent(screenSize: screenSize, screenWidth: screenWidth),
            SizedBox(
              height: 40,
            ),
            //About
            AboutContent(navbarKeys: navbarKeys, screenWidth: screenWidth),
            //Experiences
            SizedBox(
              key: navbarKeys[1],
              height: 10,
            ),
            ExperinceContainer(screenWidth: screenWidth),
            //SKILLS
            SizedBox(
              key: navbarKeys[2],
              height: 10,
            ),
            SkillContent(screenSize: screenSize),
            //PROJECT
            SizedBox(
              key: navbarKeys[3],
              height: 40,
            ),
            ProjectContent(),
            SizedBox(
              height: 40,
            ),

            SizedBox(
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
                  height: 30,
                ),
                SocialMedia(),
                SizedBox(
                  height: 30,
                ),
              ]),
            ),
            SizedBox(
              height: 14,
            ),
            Footer(screenWidth: screenWidth)
          ],
        ),
      ),
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // open a blog page
      // js.context.callMethod('open', [SnsLinks.blog]);
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
