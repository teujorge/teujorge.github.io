import 'package:flutter/material.dart';
import 'package:my_website/UI/projects.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../Widget/screen_content.dart';
import '../config.dart';
import 'parallax.dart';
import 'contact.dart';
import 'about.dart';
import 'work.dart';

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
    Config.smallScreen = Config.size.height > Config.size.width;
    return Scaffold(
      // avoid flutter iOS web blank space bug
      backgroundColor: Theme.of(context).colorScheme.background,
      // main content
      body: SizedBox(
        height: Config.size.height,
        width: Config.size.width,
        child: SafeArea(
          child: Column(
            children: [
              TopNavigation(_autoScrollController, _scrollToIndex),
              Expanded(
                child: Row(
                  children: [
                    LeftBorder(),
                    Expanded(
                      child: ListView(
                        controller: _autoScrollController,
                        children: [
                          // home
                          Parallax(offset),

                          // about me
                          _wrapScrollTag(
                            index: 0,
                            child: About(),
                          ),
                          SizedBox(
                            height: Config.size.height * 0.02,
                          ),

                          // work exp
                          _wrapScrollTag(
                            index: 1,
                            child: Work(),
                          ),
                          SizedBox(
                            height: Config.size.height * 0.10,
                          ),

                          // projects
                          _wrapScrollTag(
                            index: 2,
                            child: Projects(),
                          ),

                          SizedBox(
                            height: 6.0,
                          ),

                          // contact me
                          _wrapScrollTag(
                            index: 3,
                            child: Contact(),
                          ),
                        ],
                      ),
                    ),
                    RightBorder(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
