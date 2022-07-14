import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_text.dart';
import '../config.dart';

class FeatureProject extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final List<IconButton> icons;

  FeatureProject(
      {required this.imagePath,
      required this.icons,
      required this.projectDesc,
      required this.projectTitle,
      required this.tech1,
      required this.tech2,
      required this.tech3});

  @override
  Widget build(BuildContext context) {
    final bool smallScreen = Config.size.height > Config.size.width;
    return Container(
      height: Config.size.height * 0.9,
      width: Config.size.width * 0.95,
      child: Stack(
        children: [
          // Project Title
          Positioned(
            top: 0.0,
            right: 10.0,
            child: Container(
              height: Config.size.height * 0.10,
              width: Config.size.width * 1,
              child: Wrap(
                // mainAxisAlignment: MainAxisAlignment.end,
                alignment: WrapAlignment.end,
                children: [
                  CustomText(
                    text: projectTitle,
                    textsize: 27,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.75,
                  ),
                ],
              ),
            ),
          ),

          //Image
          Positioned(
            top: 10,
            left: smallScreen ? null : 20.0,
            child: Container(
              height: smallScreen
                  ? Config.size.height * 0.60
                  : Config.size.height * 0.60,
              width: smallScreen
                  ? Config.size.width * 0.8
                  : Config.size.width * 0.5,
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage(imagePath),
              ),
            ),
          ),

          // Short Desc
          Positioned(
            top: smallScreen
                ? Config.size.height * 0.50
                : Config.size.height / 6,
            right: 10.0,
            child: Container(
              alignment: Alignment.center,
              height: smallScreen
                  ? Config.size.height * 0.25
                  : Config.size.height * 0.20,
              width: smallScreen
                  ? Config.size.width * 0.70
                  : Config.size.width * 0.35,
              color: Colors.blue.withAlpha(150),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomText(
                      text: projectDesc,
                      textsize: 16.0,
                      letterSpacing: 0.75,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Project Resources
          Positioned(
            top: smallScreen
                ? Config.size.height * 0.75
                : Config.size.height * 0.36,
            right: smallScreen ? null : 10.0,
            left: smallScreen ? 10 : null,
            child: Container(
              height: Config.size.height * 0.08,
              // width: Config.size.width * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: tech1 == null ? "" : tech1,
                    textsize: 14,
                    letterSpacing: 1.75,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  CustomText(
                    text: tech2 == null ? "" : tech2,
                    textsize: 14,
                    letterSpacing: 1.75,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  CustomText(
                    text: tech3 == null ? "" : tech3,
                    textsize: 14,
                    letterSpacing: 1.75,
                  ),
                ],
              ),
            ),
          ),

          // icon links
          Positioned(
            top: smallScreen
                ? Config.size.height * 0.8
                : Config.size.height * 0.42,
            right: smallScreen ? null : 10.0,
            left: smallScreen ? 0 : null,
            child: Container(
              height: Config.size.height * 0.08,
              // width: Config.size.width * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: icons,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
