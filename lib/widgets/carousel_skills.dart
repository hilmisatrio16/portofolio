import 'package:flutter/material.dart';
import 'package:my_portofolio/widgets/skill_card.dart';

class CarouselSkills extends StatefulWidget {
  const CarouselSkills({super.key});

  @override
  State<CarouselSkills> createState() => _CarouselSkills();
}

class _CarouselSkills extends State<CarouselSkills> {
  List<Widget> skillItems = [
    SkillCard(imageAsset: "assets/android_studio.png"),
    SkillCard(imageAsset: "assets/kotlin.png"),
    SkillCard(imageAsset: "assets/dart.png"),
    SkillCard(imageAsset: "assets/flutter.png"),
    SkillCard(imageAsset: "assets/java.png"),
    SkillCard(imageAsset: "assets/cshap.png"),
    SkillCard(imageAsset: "assets/unity.png"),
  ];

  // List<Widget> widgets = List.generate(
  //   10,
  //   (index) => ClipRRect(
  //     borderRadius: const BorderRadius.all(
  //       Radius.circular(5.0),
  //     ),
  //     child: Image.asset(
  //       "assets/bangkit.png", //Images stored in assets folder
  //       fit: BoxFit.cover,
  //     ),
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: SizedBox(
          // height: screenHeight * 0.5,
          // child: OverlappedCarousel(
          //   obscure: 0.3,
          //   skewAngle: 0.05,
          //   widgets: skillItems,
          //   currentIndex: 3,
          //   onClicked: (index) {},
          // ),
          ),
    );
  }
}
