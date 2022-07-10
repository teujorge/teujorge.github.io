import 'package:flutter/material.dart';

import 'config.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  final String title = "Projects";

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  Center _body = const Center();

  @override
  Widget build(BuildContext context) {
    Config.screenWidth = MediaQuery.of(context).size.width;
    Config.screenHeight = MediaQuery.of(context).size.height;

    _body = const Center(
      child: Text(
        'in progress!',
      ),
    );

    return Scaffold(
      appBar: Config.getAppBar(widget.title, context),
      body: _body,
    );
  }
}
