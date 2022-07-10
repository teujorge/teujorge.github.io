import 'package:flutter/material.dart';

import 'config.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  final String title = "Resume";

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  Center _body = const Center();

  @override
  Widget build(BuildContext context) {
    _body = Center(
      child: Image.asset("Resume-2022.png"),
    );

    return Scaffold(
      appBar: Config.getAppBar(widget.title, context),
      body: _body,
    );
  }
}
