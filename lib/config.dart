import 'package:flutter/material.dart';

import 'home.dart';
import 'resume.dart';
import 'projects.dart';

class Config {
  static ColorScheme colorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffbb86fc),
    onPrimary: Colors.black,
    secondary: Color(0xff03dac6),
    onSecondary: Colors.black,
    error: Color(0xffcf6679),
    onError: Colors.black,
    background: Color(0xff121212),
    onBackground: Colors.white,
    surface: Color(0xff121212),
    onSurface: Colors.white,
  );
  static double screenWidth = 0;
  static double screenHeight = 0;
  static AppBar getAppBar(String title, BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(title),
      actions: [
        TextButton.icon(
          icon: const Icon(Icons.home_rounded),
          label: screenWidth > 500 ? const Text("Home") : const SizedBox(),
          autofocus: title == "Home",
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
                settings: const RouteSettings(name: "/Home"),
              ),
            );
          },
        ),
        TextButton.icon(
          icon: const Icon(Icons.work_rounded),
          label: screenWidth > 500 ? const Text("Projects") : const SizedBox(),
          autofocus: title == "Projects",
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const ProjectsPage(),
                settings: const RouteSettings(name: "/Projects"),
              ),
            );
          },
        ),
        TextButton.icon(
          icon: const Icon(Icons.picture_as_pdf_rounded),
          label: screenWidth > 500 ? const Text("Resume") : const SizedBox(),
          autofocus: title == "Resume",
          // style: ButtonStyle(
          //   foregroundColor:
          //       MaterialStateColor.resolveWith((_) => Colors.black),
          // ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const ResumePage(),
                settings: const RouteSettings(name: "/Resume"),
              ),
            );
          },
        )
      ],
    );
  }
}
