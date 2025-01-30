import 'package:my_portofolio/constants/text_value.dart';

class Project {
  final String imgAsset;
  final String titleApp;
  final String subTitleApp;
  final List<String> projectDetails;
  final List<String> technologies;

  Project(
      {required this.imgAsset,
      required this.titleApp,
      required this.subTitleApp,
      required this.projectDetails,
      required this.technologies});
}

List<Project> listProject = [
  Project(
      imgAsset: "assets/obrol.png",
      titleApp: "OBROL",
      subTitleApp:
          "is a social app useful for interacting with communities from around the world.",
      projectDetails: [
        "Developed with native android technology using Kotlin programming language and Android Studio as IDEA.",
        "Apply MVVM Design pattern to application development.",
        "Using some libraries on Android Jetpack and some Firebase services as service as backend.",
        "Features explore, add communities, upload stories, chat, and comment.",
        "Compatible with Android Version 7.0 (Nougat)",
      ],
      technologies: [
        "kotlin",
        "android_studio",
        "firebase"
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
      ],
      technologies: [
        "kotlin",
        "android_studio",
        "firebase"
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
      ],
      technologies: [
        "kotlin",
        "android_studio",
        "firebase"
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
      ],
      technologies: [
        "kotlin",
        "android_studio",
        "firebase"
      ]),
];
List projectItems = [
  "is a social app useful for interacting with communities from around the world."
];
