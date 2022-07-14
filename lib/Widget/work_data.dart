import 'package:flutter/material.dart';

import '../config.dart';

class WorkData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;

  const WorkData(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.duration});
  @override
  Widget build(BuildContext context) {
    final bool smallScreen = Config.size.height > Config.size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: smallScreen ? 10 + Config.size.width / 50 : 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: smallScreen ? null : FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          duration,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: smallScreen ? null : FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
