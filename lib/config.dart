import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Config {
  static Size size = Size(0, 0);
  static double screenMargin = 0.1;

  static final buttonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(4),
    minimumSize: MaterialStateProperty.all(Size(125, 75)),
    maximumSize: MaterialStateProperty.all(Size(250, 200)),
    // backgroundColor: MaterialStateProperty.all(
    //   Theme.of(context).colorScheme.outline,
    // ),
  );

  static launchURL(String link) async {
    final Uri uri = Uri.parse(link);
    canLaunchUrl(uri).then((bool can) => can ? launchUrl(uri) : {});
  }

  static launchCaller() async {
    final Uri uri = Uri(scheme: 'tel', path: '6174803058');
    canLaunchUrl(uri).then((bool can) => can ? launchUrl(uri) : {});
  }

  static launchEmail() async {
    final Uri uri = Uri(scheme: 'mailto', path: 'mrljorge@outlook.com');
    canLaunchUrl(uri).then((bool can) => can ? launchUrl(uri) : {});
  }
}
