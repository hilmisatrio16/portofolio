import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:my_portofolio/constants/colors.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.imageAsset});
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL,
      side: CardSide.FRONT,
      front: Card(imageAsset: imageAsset),
      back: Card(imageAsset: imageAsset),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.imageAsset,
  });

  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10, // Menambahkan elevation
      shadowColor: CustomColor.fullDarkBlue,
      color: CustomColor.fullDarkBlue, // Warna shadow
      borderRadius: BorderRadius.circular(10),
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 200,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColor.fullDarkBlue,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Image.asset(
          imageAsset,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
