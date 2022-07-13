import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: Config.size.width,
        height: Config.size.height * 1.4,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "02.",
                textsize: 20.0,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: "Experience",
                textsize: 26.0,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: Config.size.width * 0.01,
              ),
              Container(
                width: Config.size.width / 4,
                height: 1.10,
              ),
            ],
          ),
          SizedBox(
            height: Config.size.height * 0.07,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: Config.size.height,
                  child: Stack(
                    children: [
                      Center(
                        child: VerticalDivider(
                          thickness: 1.75,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                child: FaIcon(
                                  FontAwesomeIcons.laptopHouse,
                                ),
                              ),
                              CircleAvatar(
                                child: FaIcon(
                                  FontAwesomeIcons.freeCodeCamp,
                                ),
                              ),
                              CircleAvatar(
                                child: FaIcon(
                                  FontAwesomeIcons.laptopCode,
                                ),
                              ),
                              CircleAvatar(
                                child: FaIcon(
                                  FontAwesomeIcons.coffee,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: Config.size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WorkData(
                          title:
                              "Test Software Engineer, Honeywell Aerospace, Clearwater FL",
                          subTitle:
                              "Translate written requirments into software. Perform software validation and documentation. Communicate and consult with clients to ameliorate current manufacturing processes. Support product manufacturing by maintaining and updating factory equipment.",
                          duration: "2020 - 2022",
                        ),
                        WorkData(
                          title:
                              "Systems Engineer Inter, BendixKing, Albuquerque NM",
                          subTitle:
                              "helped with faa product certification.  wrote and completed integration test plans for iterative software builds. created autonomous processes to repeatdly test systems to ensure product requirements wer satisfied.",
                          duration: "Summer 2019",
                        ),
                        WorkData(
                          title:
                              "Technician, University of Vermont, Burlington VT",
                          subTitle:
                              "in the university fabrication laboratory I assited with variouse student projects using 3D printers, 3D scanners, laser cutters or soldering equipment. Maintina and update equipment used in lab for efficacy.",
                          duration: "2018-2019",
                        ),
                        WorkData(
                          title:
                              " BSe Mechanical Engineering with Computer Science Minor",
                          subTitle: "",
                          duration: "May 2020",
                        ),
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}