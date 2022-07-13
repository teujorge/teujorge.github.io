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
    return Container(
      height: Config.size.height / 0.999,
      width: Config.size.width - 100,
      child: Column(
        children: [
          Container(
            height: Config.size.height - 100,
            width: Config.size.width - 84,
            child: Stack(
              children: [
                //Image
                Positioned(
                  top: Config.size.height * 0.02,
                  left: 20.0,
                  child: Container(
                    height: Config.size.height * 0.60,
                    width: Config.size.width * 0.5,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),

                // Short Desc
                Positioned(
                  top: Config.size.height / 6,
                  right: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: Config.size.height * 0.18,
                    width: Config.size.width * 0.35,
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

                // Project Title
                Positioned(
                  top: 16.0,
                  right: 10.0,
                  child: Container(
                    height: Config.size.height * 0.10,
                    width: Config.size.width * 0.25,
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

                // Project Resources
                Positioned(
                  top: Config.size.height * 0.36,
                  right: 10.0,
                  child: Container(
                    height: Config.size.height * 0.08,
                    width: Config.size.width * 0.25,
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

                // Gitub Link
                Positioned(
                  top: Config.size.height * 0.42,
                  right: 10.0,
                  child: Container(
                    height: Config.size.height * 0.08,
                    width: Config.size.width * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: icons,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
