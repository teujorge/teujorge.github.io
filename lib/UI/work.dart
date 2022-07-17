import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import '../Widget/custom_text.dart';
import '../Widget/work_data.dart';
import '../config.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Config.size.width,
      child: Column(
        children: [
          MainHeader(number: "02.", text: "Experience"),
          SizedBox(
            height: Config.size.height * 0.07,
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WorkData(
                    title:
                        "Test Software Engineer, Honeywell Aerospace, Clearwater FL",
                    subTitle:
                        "Translated written requirements into software. Perform software validation and documentation. Communicate and consult with clients to ameliorate current manufacturing processes. Support product manufacturing by maintaining and updating factory equipment.",
                    duration: "2020 - 2022",
                    avatar: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: FaIcon(
                        // FontAwesomeIcons.laptopCode,
                        FontAwesomeIcons.laptop,
                      ),
                    ),
                  ),
                  WorkData(
                    title:
                        "Systems Engineer Intern, BendixKing, Albuquerque NM",
                    subTitle:
                        "Helped with FAA product certification. Wrote and completed integration test plans for iterative software builds. Created autonomous processes to repeatedly test systems in order to ensure product requirements were satisfied.",
                    duration: "2019",
                    avatar: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: FaIcon(
                        FontAwesomeIcons.codeBranch,
                      ),
                    ),
                  ),
                  WorkData(
                    title:
                        "Mechanical Engineering Major with Computer Science Minor",
                    subTitle:
                        "Bachelors of Science from the University of Vermont.",
                    duration: "2020",
                    avatar: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: FaIcon(
                        FontAwesomeIcons.mugHot,
                      ),
                    ),
                  ),
                  WorkData(
                    title: "Technician, University of Vermont, Burlington VT",
                    subTitle:
                        "In the University Fabrication Laboratory (FabLab), I assisted various student projects that used 3D Printers, 3D Scanners, Laser Cutter or Soldering equipment. Maintained and updated equipment used in lab to ensure efficacy.",
                    duration: "2018 - 2019",
                    avatar: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: FaIcon(
                        FontAwesomeIcons.freeCodeCamp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
