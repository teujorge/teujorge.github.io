import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../Widget/custom_text.dart';
import '../config.dart';

class Parallax extends StatelessWidget {
  final double offset;

  Parallax(this.offset);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Config.size.height * 0.8,
      width: Config.size.width * 0.9,
      child: Stack(
        children: [
          Positioned(
            bottom: offset * 1,
            child: SizedBox(
              height: Config.size.height,
              width: Config.size.width,
            ),
          ),
          Positioned(
            bottom: offset * 2,
            right: 0,
            child: SizedBox(
              height: Config.size.height / 2,
              width: Config.size.width / 2,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    "https://raw.githubusercontent.com/teujorge/teujorge.github.io/master/assets/images/earth.png",
              ),
            ),
          ),
          Positioned(
            bottom: offset * 4,
            right: 0,
            child: SizedBox(
              height: Config.size.height / 10,
              width: Config.size.width / 10,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    "https://raw.githubusercontent.com/teujorge/teujorge.github.io/master/assets/images/moon.png",
              ),
            ),
          ),
          // Positioned(
          //   top: 0,
          //   right: 0,
          //   child: CustomText(
          //     text: "images.nasa.gov",
          //     textsize: 10,
          //   ),
          // ),
          Container(
            height: Config.size.height,
            padding: EdgeInsets.all(1 + Config.size.width / 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Hi, my name is",
                  textsize: 16.0,
                  letterSpacing: 3.0,
                ),
                SizedBox(
                  height: 6.0,
                ),
                CustomText(
                  text: "Matheus Jorge.",
                  textsize: 25 + Config.size.width / 15, //68.0,
                  fontWeight: FontWeight.w900,
                ),
                SizedBox(
                  height: 4.0,
                ),
                CustomText(
                  text: "I engineer things!",
                  textsize: 15 + Config.size.width / 20, //56.0,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: Config.size.height * .04,
                ),
                Container(
                  width: Config.size.width / 2,
                  child: Text(
                    "I continously develop my software skills by building and designing exceptional games, embedded systems and everything in between.",
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 2.75,
                      wordSpacing: 0.75,
                    ),
                  ),
                ),
                SizedBox(
                  height: Config.size.height * 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
