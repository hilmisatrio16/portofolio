import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          GestureDetector(
            onTap: () {
              js.context
                  .callMethod('open', ["https://github.com/hilmisatrio16"]);
            },
            child: Image.asset(
              "assets/github.png",
              width: 50,
              height: 50,
            ),
          ),
          GestureDetector(
            onTap: () {
              js.context.callMethod(
                  'open', ["https://www.linkedin.com/in/mhilmisatrio"]);
            },
            child: Image.asset(
              "assets/linkedin.png",
              width: 50,
              height: 50,
            ),
          )
        ],
      ),
    );
  }
}
