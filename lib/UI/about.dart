import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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

//Profile Image
  Widget showProfileImage() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: Config.smallScreen
            ? Config.size.height / 3
            : Config.size.height / 2,
        width: Config.smallScreen ? Config.size.width : Config.size.width / 4.5,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 15,
              right: 15,
              child: Card(
                color: Colors.black.withAlpha(10),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Center(child: CircularProgressIndicator()),
                  Center(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image:
                          "https://raw.githubusercontent.com/teujorge/teujorge.github.io/master/assets/images/profile.jpeg",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Config.size.width,
      child: Column(
        children: [
          //About me title
          MainHeader(number: "01.", text: "About Me"),

          // image in col if small screen
          Config.smallScreen ? showProfileImage() : SizedBox(),

          // content
          Row(
            children: [
              //About me
              Container(
                width: Config.smallScreen
                    ? Config.size.width * 0.70
                    : Config.size.width / 2.25,
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
                      // height: Config.size.height * 0.15,
                      width: Config.size.width,
                      child: Wrap(
                        children: [
                          Container(
                            width: Config.smallScreen
                                ? Config.size.width * 0.7
                                : Config.size.width * 0.20,
                            // height: Config.size.height * 0.10,
                            child: Column(
                              children: [
                                technology(context, "Dart/Flutter"),
                                technology(context, "C/C++"),
                                technology(context, "Git/Github"),
                              ],
                            ),
                          ),
                          Container(
                            width: Config.smallScreen
                                ? Config.size.width * 0.7
                                : Config.size.width * 0.20,
                            // height: Config.size.height * 0.10,
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
              Config.smallScreen ? SizedBox() : showProfileImage(),
            ],
          ),
        ],
      ),
    );
  }
}
