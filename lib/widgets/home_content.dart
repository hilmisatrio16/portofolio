import 'package:animate_do/animate_do.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/controllers/button_nav_controller.dart';

import '../constants/colors.dart';
import 'about_desktop.dart';
import 'about_mobile.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({
    super.key,
    required this.screenSize,
    required this.screenWidth,
    required this.controller,
    required this.navbarKeys,
    required this.scrollToSection,
  });

  final Size screenSize;
  final double screenWidth;
  final ButtonNavController controller;
  final List<GlobalKey<State<StatefulWidget>>> navbarKeys;
  final void Function(int) scrollToSection;

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: (widget.screenWidth < 600)
          ? widget.screenSize.height / 1.4
          : widget.screenSize.height / 1,
      child: Stack(
        children: [
          Positioned(
            left: -90,
            top: 70,
            child: FadeIn(
              animate: true,
              child: Container(
                width: (widget.screenWidth < 600) ? 380 : 450,
                height: (widget.screenWidth < 600) ? 380 : 450,
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
            child: (widget.screenWidth < 600) ? AboutMobile() : AboutDesktop(),
          ),
          if (widget.screenWidth < 600)
            Obx(() => widget.controller.isVisible.value
                ? Positioned(
                    top: 4, // Menentukan posisi di atas
                    right: 40,
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                        decoration: BoxDecoration(
                          color: CustomColor.fullDarkBlue,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: CustomColor.navColor,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            InkWell(
                              onTap: () {
                                widget.scrollToSection(0);
                              },
                              child: Icon(
                                Icons.person_3_outlined,
                                size: 20,
                                color: CustomColor.navColor,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            InkWell(
                              onTap: () {
                                widget.scrollToSection(1);
                              },
                              child: Icon(Icons.work_outline,
                                  size: 20, color: CustomColor.navColor),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            InkWell(
                              onTap: () {
                                widget.scrollToSection(2);
                              },
                              child: Icon(Icons.build_outlined,
                                  size: 20, color: CustomColor.navColor),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            InkWell(
                              onTap: () {
                                widget.scrollToSection(3);
                              },
                              child: Icon(Icons.assessment_outlined,
                                  size: 20, color: CustomColor.navColor),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            InkWell(
                              onTap: () {
                                widget.scrollToSection(4);
                              },
                              child: Icon(Icons.share_outlined,
                                  size: 20, color: CustomColor.navColor),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                          ],
                        )),
                  )
                : SizedBox())
        ],
      ),
    );
  }
}
