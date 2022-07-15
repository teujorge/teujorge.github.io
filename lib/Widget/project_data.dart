import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';
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
    return Container(
      height: Config.size.height,
      width: Config.size.width,
      child: Stack(
        children: [
          // Project Title
          Positioned(
            top: 0.0,
            right: 10.0,
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

          //Image
          Positioned(
            top: 10,
            left: Config.smallScreen ? null : 20.0,
            child: Container(
              height: Config.smallScreen
                  ? Config.size.height * 0.40
                  : Config.size.height * 0.60,
              width: Config.smallScreen
                  ? Config.size.width * 0.7
                  : Config.size.width * 0.5,
              child: Stack(
                children: [
                  Center(child: CircularProgressIndicator()),
                  Center(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: imagePath,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Short Desc
          Positioned(
            top: Config.smallScreen
                ? Config.size.height * 0.35
                : Config.size.height / 6,
            right: 10.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: Config.smallScreen
                      ? Config.size.width * 0.70
                      : Config.size.width * 0.35,
                  color: Theme.of(context).colorScheme.secondary.withAlpha(150),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(16.0),
                        child: CustomText(
                          text: projectDesc,
                          textsize: 16.0,
                          letterSpacing: 0.75,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(
                      text: tech1,
                      textsize: 14,
                      letterSpacing: 1.75,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    CustomText(
                      text: tech2,
                      textsize: 14,
                      letterSpacing: 1.75,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    CustomText(
                      text: tech3,
                      textsize: 14,
                      letterSpacing: 1.75,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: icons,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
