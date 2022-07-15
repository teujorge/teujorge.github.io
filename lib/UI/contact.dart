import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';

import '../Widget/custom_text.dart';
import '../config.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width - 100,
      child: Text(
        "Thank you, Matheus Jorge",
        style: TextStyle(
          letterSpacing: 1.75,
          fontSize: 14.0,
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: Config.size.height * 0.68,
          width: MediaQuery.of(context).size.width - 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainHeader(number: "04.", text: "What's Next?"),
              SizedBox(
                height: 16.0,
              ),
              CustomText(
                text: "Get In Touch",
                textsize: 42.0,
                letterSpacing: 3.0,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 16.0,
              ),
              Wrap(
                children: [
                  Text(
                    "Although I'm currently looking for SDE-1 opportunities, my inbox is \nalways open. Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 0.75,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 64.0,
              ),
              ElevatedButton(
                style: Config.buttonStyle,
                onPressed: () {
                  Config.launchEmail();
                },
                child: Text(
                  "Say Hello",
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              ElevatedButton(
                style: Config.buttonStyle,
                onPressed: () {
                  html.window.open(
                    "https://raw.githubusercontent.com/teujorge/teujorge.github.io/master/assets/Resume-2022.pdf",
                    "MatheusResume",
                  );
                },
                child: Text("Get Resume"),
              ),
            ],
          ),
        ),
        Footer(),
      ],
    );
  }
}
