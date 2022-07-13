import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';
import '../config.dart';

class TopNavigation extends StatelessWidget {
  final AutoScrollController _autoScrollController;
  final Function _scrollToIndex;

  TopNavigation(this._autoScrollController, this._scrollToIndex);

  @override
  Widget build(BuildContext context) {
    final double letterSpacing = Config.size.width / 300 + 1;
    return Container(
      height: Config.size.height * 0.14,
      width: Config.size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            IconButton(
                iconSize: 32,
                icon: Icon(
                  Icons.temple_buddhist_rounded,
                  size: 32.0,
                ),
                onPressed: () {
                  _autoScrollController.animateTo(
                    0,
                    duration: Duration(
                      milliseconds: (_autoScrollController.offset / 2).round(),
                    ),
                    curve: Curves.ease,
                  );
                }),
            SizedBox(
              width: Config.size.width > 1100
                  ? Config.size.width * 0.3
                  : Config.size.width * 0.05,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                    onTap: (index) async {
                      _scrollToIndex(index);
                    },
                    tabs: [
                      Tab(
                        child: CustomText(
                          text: 'About',
                          textsize: 14,
                          letterSpacing: letterSpacing,
                        ),
                      ),
                      Tab(
                        child: CustomText(
                          text: 'Experience',
                          textsize: 14,
                          letterSpacing: letterSpacing,
                        ),
                      ),
                      Tab(
                        child: CustomText(
                          text: 'Projects',
                          textsize: 14,
                          letterSpacing: letterSpacing,
                        ),
                      ),
                      Tab(
                        child: CustomText(
                          text: 'Contact Me',
                          textsize: 14,
                          letterSpacing: letterSpacing,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeftBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Config.size.width * 0.04 + 20,
      height: Config.size.height - Config.screenMargin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.github),
            iconSize: 16.0,
            onPressed: () {
              Config.launchURL("https://github.com/teujorge");
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.linkedin),
            onPressed: () {
              Config.launchURL("https://www.linkedin.com/in/matheus-jorge/");
            },
            iconSize: 16.0,
          ),
          IconButton(
              icon: Icon(Icons.call),
              iconSize: 16.0,
              onPressed: () {
                Config.launchCaller();
              }),
          IconButton(
              icon: Icon(Icons.mail),
              iconSize: 16.0,
              onPressed: () {
                Config.launchEmail();
              }),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              height: Config.size.height * 0.20,
              width: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class RightBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Config.size.width * 0.04 + 20,
      height: Config.size.height - Config.screenMargin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RotatedBox(
            quarterTurns: 45,
            child: Text(
              "mrljorge@outlook.com",
              style: TextStyle(
                letterSpacing: 3.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              height: 100,
              width: 2,
            ),
          ),
        ],
      ),
    );
  }
}