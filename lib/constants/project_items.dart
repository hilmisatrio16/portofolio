import 'package:my_portofolio/constants/text_value.dart';

class Project {
  final String imgAsset;
  final String titleApp;
  final String subTitleApp;
  final List<String> projectDetails;

  Project(
      {required this.imgAsset,
      required this.titleApp,
      required this.subTitleApp,
      required this.projectDetails});
}

List<Project> listProject = [
  Project(
      imgAsset: "assets/obrol.png",
      titleApp: "OBROL",
      subTitleApp:
          "is a social app useful for interacting with communities from around the world.",
      projectDetails: [
        lorem,
        lorem,
        lorem,
        lorem,
      ]),
  Project(
      imgAsset: "assets/obrol.png",
      titleApp: "OBROL",
      subTitleApp:
          "is a social app useful for interacting with communities from around the world.",
      projectDetails: [
        lorem,
        lorem,
        lorem,
        lorem,
      ]),
  Project(
      imgAsset: "assets/obrol.png",
      titleApp: "OBROL",
      subTitleApp:
          "is a social app useful for interacting with communities from around the world.",
      projectDetails: [
        lorem,
        lorem,
        lorem,
        lorem,
      ]),
  Project(
      imgAsset: "assets/obrol.png",
      titleApp: "OBROL",
      subTitleApp:
          "is a social app useful for interacting with communities from around the world.",
      projectDetails: [
        lorem,
        lorem,
        lorem,
        lorem,
      ]),
];
List projectItems = [
  "is a social app useful for interacting with communities from around the world."
];
