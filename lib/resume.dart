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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    _body = Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          child: Container(
            color: Colors.black,
            child: InteractiveViewer(
              alignPanAxis: true,
              constrained: false,
              minScale: 0.1,
              maxScale: 4,
              child: Image.asset(
                "Resume-2022.png",
                width: width * 0.8,
                height: height * 0.75,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: Config.getAppBar(widget.title, context),
      body: _body,
    );
  }
}
