import 'package:flutter/material.dart';

import '../config.dart';

class WorkData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;
  final CircleAvatar avatar;

  const WorkData({
    super.key,
    required this.title,
    required this.avatar,
    required this.subTitle,
    required this.duration,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 4),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  // Center(
                  //   child:
                  VerticalDivider(
                    thickness: 1.75,
                    width: 10,
                    indent: 10,
                    endIndent: 10,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  // ),
                  Center(child: avatar),
                ],
              ),
            ),
            Expanded(
              flex: Config.smallScreen ? 4 : 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // title
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: Config.smallScreen
                          ? 10 + Config.size.width / 50
                          : 20 + Config.size.width / 150,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  // sub title
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: Config.smallScreen
                          ? 8 + Config.size.width / 75
                          : 10 + Config.size.width / 225,
                      fontWeight: Config.smallScreen ? null : FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  // date
                  Text(
                    duration,
                    style: TextStyle(
                      fontSize: Config.smallScreen
                          ? 10 + Config.size.width / 75
                          : 12 + Config.size.width / 225,
                      fontWeight: Config.smallScreen ? null : FontWeight.w700,
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
}
