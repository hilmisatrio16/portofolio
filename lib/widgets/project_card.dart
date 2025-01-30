import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/constants/colors.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key,
      required this.imgAsset,
      required this.titleApp,
      required this.subTitleApp,
      required this.projectDetails,
      required this.technologies});
  final String imgAsset;
  final String titleApp;
  final String subTitleApp;
  final List<String> projectDetails;
  final List<String> technologies;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: FrontCardProject(
        imgAsset: imgAsset,
        titleApp: titleApp,
        subTitleApp: subTitleApp,
        technologies: technologies,
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
      height: 450,
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
                  fontSize: 10,
                  fontFamily: "Montserrat",
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w300),
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
    required this.technologies,
  });

  final String imgAsset;
  final String titleApp;
  final String subTitleApp;
  final List<String> technologies;

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
      height: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset(
              imgAsset,
              width: 230,
              height: 230,
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
                  fontFamily: "Montserrat",
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
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w300,
                  color: CustomColor.whitePrimary),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 4, 20, 47),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                for (int i = 0; i < technologies.length; i++)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    child: Image.asset(
                      "assets/${technologies[i]}.png",
                      width: 20,
                      height: 20,
                      fit: BoxFit.fill,
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
