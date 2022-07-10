import 'package:flutter/material.dart';

import 'home.dart';
import 'resume.dart';
import 'projects.dart';

class Config {
  static AppBar getAppBar(String title, BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(title),
      actions: [
        TextButton.icon(
          icon: const Icon(Icons.home_rounded),
          label: const Text("Home"),
          autofocus: title == "Home",
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((_) => Colors.black),
          ),
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
          label: const Text("Projects"),
          autofocus: title == "Projects",
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((_) => Colors.black),
          ),
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
          label: const Text("Resume"),
          autofocus: title == "Resume",
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((_) => Colors.black),
          ),
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
