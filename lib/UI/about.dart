import 'package:flutter/material.dart';

import '../Widget/custom_text.dart';
import '../config.dart';

class About extends StatelessWidget {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.navigate_next_rounded,
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  Widget showProfileImage() {
    return //Profile Image
        Expanded(
      child: Container(
        height: Config.size.height / 1.5,
        width: Config.size.width / 2,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: Config.size.height * 0.12,
              left: Config.size.width * 0.120,
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(2.75),
                  height: Config.size.height / 2,
                  width: Config.size.width / 5,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: Config.size.height / 2,
                  width: Config.size.width / 5,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/profile.jpeg"),
                  ),
                ),
                Container(
                  height: Config.size.height / 2,
                  width: Config.size.width / 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool smallScreen = Config.size.height > Config.size.width;
    return Container(
      height: Config.size.height,
      width: Config.size.width,
      child: Column(
        children: [
          //About me title
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "01.",
                textsize: 20.0,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: "About Me",
                textsize: 26.0,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: Config.size.width * 0.01,
              ),
            ],
          ),

          // image in col if small screen
          smallScreen ? showProfileImage() : SizedBox(),

          // content
          Row(
            children: [
              //About me
              Container(
                height: Config.size.height * 0.9,
                width: smallScreen
                    ? Config.size.width * 0.70
                    : Config.size.width / 2,
                child: Column(
                  children: [
                    SizedBox(
                      height: Config.size.height * 0.07,
                    ),

                    // about me desc
                    Wrap(
                      children: [
                        CustomText(
                          text:
                              "Hello! I am Matheus.\n\nI enjoy developing products using technology, whether that be physical or virutal.\n\n",
                          textsize: 16.0,
                          letterSpacing: 0.75,
                        ),
                        CustomText(
                          text:
                              "Shortly currently, I am a Mechanical Engineer by trade currently accruing my software expertise by working on a variety of interesting projects on a daily basis.\n\n",
                          textsize: 16.0,
                          letterSpacing: 0.75,
                        ),
                        CustomText(
                          text:
                              "Here are a few technologies I've been working with recently:\n\n",
                          textsize: 16.0,
                          letterSpacing: 0.75,
                        ),
                      ],
                    ),

                    Container(
                      height: Config.size.height * 0.15,
                      width: Config.size.width,
                      child: Wrap(
                        children: [
                          Container(
                            width: smallScreen
                                ? Config.size.width * 0.7
                                : Config.size.width * 0.20,
                            height: Config.size.height * 0.10,
                            child: Column(
                              children: [
                                technology(context, "Dart/Flutter"),
                                technology(context, "C/C++"),
                                technology(context, "Git/Github"),
                              ],
                            ),
                          ),
                          Container(
                            width: smallScreen
                                ? Config.size.width * 0.7
                                : Config.size.width * 0.20,
                            height: Config.size.height * 0.10,
                            child: Column(
                              children: [
                                technology(context, "MATLAB"),
                                technology(context, "Arduino"),
                                technology(context, "Python"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // image in row if big screen
              smallScreen ? SizedBox() : showProfileImage(),
            ],
          ),
        ],
      ),
    );
  }
}
