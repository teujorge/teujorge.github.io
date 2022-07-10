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
  double _scale = 2;

  @override
  Widget build(BuildContext context) {
    Config.screenWidth = MediaQuery.of(context).size.width;
    Config.screenHeight = MediaQuery.of(context).size.height;

    print(_scale);

    // min max scale
    if (_scale > 2.5) {
      _scale = 2.5;
    } else if (_scale < 0.9) {
      _scale = 0.9;
    }

    _body = Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          child: Container(
            width: Config.screenWidth * 0.9,
            height: Config.screenHeight * 0.9,
            color: Colors.black,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Image.asset(
                    "Resume-2022.png",
                    width: Config.screenWidth * 0.8 * _scale,
                    height: Config.screenHeight * 0.75 * _scale,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _scale += 0.1;
                        });
                      },
                      color: Config.colorScheme.secondary,
                      icon: const Icon(Icons.add_circle_rounded),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _scale -= 0.1;
                        });
                      },
                      color: Config.colorScheme.primary,
                      icon: const Icon(Icons.cancel_rounded),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: Config.getAppBar(widget.title, context),
      body: _body,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("download it!");
        },
        tooltip: 'Download Resume',
        child: const Icon(
          Icons.download_rounded,
        ),
      ),
    );
  }
}
