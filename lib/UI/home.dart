import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_website/UI/projects.dart';
import '../config.dart';
import 'about.dart';
import 'contact.dart';
import '../Widget/project_data.dart';
import 'Work.dart';
import '../Widget/custom_text.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:transparent_image/transparent_image.dart';
import '../Widget/screen_content.dart';
import 'parallax.dart';

class HomePage extends StatefulWidget {
  HomePage();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AutoScrollController _autoScrollController;
  double offset = 0;

  @override
  void initState() {
    _autoScrollController = AutoScrollController()
      ..addListener(
        () => setState(() => offset = _autoScrollController.offset),
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
    );
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    Config.size = MediaQuery.of(context).size;
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        // onNotification: _updateOffsetAccordingToScroll,
        child: Column(
          children: [
            TopNavigation(_autoScrollController, _scrollToIndex),
            Row(
              children: [
                LeftBorder(),
                Expanded(
                  child: Container(
                    height: Config.size.height - Config.screenMargin,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: CustomScrollView(
                        controller: _autoScrollController,
                        slivers: <Widget>[
                          SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                Parallax(offset),

                                //About Me
                                _wrapScrollTag(
                                  index: 0,
                                  child: About(),
                                ),
                                SizedBox(
                                  height: Config.size.height * 0.02,
                                ),

                                // Work
                                _wrapScrollTag(
                                  index: 1,
                                  child: Work(),
                                ),
                                SizedBox(
                                  height: Config.size.height * 0.10,
                                ),

                                // Projects
                                _wrapScrollTag(
                                  index: 2,
                                  child: Projects(),
                                ),

                                SizedBox(
                                  height: 6.0,
                                ),

                                //Get In Touch
                                _wrapScrollTag(
                                  index: 3,
                                  child: Contact(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                RightBorder(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
