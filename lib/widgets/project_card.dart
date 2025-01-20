import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/colors.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key,
      required this.imgAsset,
      required this.titleApp,
      required this.subTitleApp,
      required this.projectDetails});
  final String imgAsset;
  final String titleApp;
  final String subTitleApp;
  final List<String> projectDetails;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: FrontCardProject(
        imgAsset: imgAsset,
        titleApp: titleApp,
        subTitleApp: subTitleApp,
      ),
      back: BackCardProject(
        projectDetails: projectDetails,
      ),
    );
  }
}

class BackCardProject extends StatelessWidget {
  const BackCardProject({super.key, required this.projectDetails});
  final List<String> projectDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColor.fullDarkBlue.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: CustomColor.fullDarkBlue,
                offset: Offset(0, 3),
                spreadRadius: 3,
                blurRadius: 5)
          ]),
      width: 220,
      height: 420,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        for (int i = 0; i < projectDetails.length; i++)
          ListTile(
            leading: Icon(
              Icons.circle,
              size: 6,
              color: CustomColor.whitePrimary,
            ),
            title: Text(
              projectDetails[i],
              style: TextStyle(
                  fontSize: 8,
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w100),
            ),
          )
      ]),
    );
  }
}

class FrontCardProject extends StatelessWidget {
  const FrontCardProject({
    super.key,
    required this.imgAsset,
    required this.titleApp,
    required this.subTitleApp,
  });

  final String imgAsset;
  final String titleApp;
  final String subTitleApp;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColor.fullDarkBlue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: CustomColor.fullDarkBlue.withOpacity(0.5),
                offset: Offset(0, 3),
                spreadRadius: 3,
                blurRadius: 5)
          ]),
      width: 220,
      height: 420,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset(
              imgAsset,
              width: 230,
              height: 240,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              titleApp,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: CustomColor.whitePrimary),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              subTitleApp,
              style: TextStyle(fontSize: 12, color: CustomColor.whitePrimary),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 4, 20, 47),
                borderRadius: BorderRadius.circular(6)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/kotlin.png",
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  "assets/android_studio.png",
                  width: 20,
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
