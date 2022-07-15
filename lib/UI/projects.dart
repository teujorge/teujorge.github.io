import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import '../Widget/project_data.dart';
import '../Widget/custom_text.dart';
import '../config.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainHeader(
          number: "03.",
          text: "Projects",
        ),
        SizedBox(
          height: Config.size.height * 0.04,
        ),
        FeatureProject(
          imagePath:
              "https://raw.githubusercontent.com/teujorge/teujorge.github.io/master/assets/images/movie_matter.png",
          icons: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.appStoreIos),
              onPressed: () {
                Config.launchURL(
                    "https://apps.apple.com/us/app/moviematter/id1631748579");
              },
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.googlePlay),
              onPressed: () {
                Config.launchURL(
                    "https://play.google.com/store/apps/details?id=com.mjorge.MovieMatter");
              },
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.github),
              onPressed: () {
                Config.launchURL("https://github.com/teujorge/MovieMatter");
              },
            ),
          ],
          projectDesc:
              "An app for iOS and Android showing movie, tv show and celebrity catalogue using the TMDb API. Users can login and append to their favorited, rated and watchlists to obtain unique media recommendations.",
          projectTitle: "MovieMatter",
          tech1: "Dart",
          tech2: "Flutter",
          tech3: "API",
        ),
        FeatureProject(
          imagePath:
              "https://raw.githubusercontent.com/teujorge/teujorge.github.io/master/assets/videos/water_belt_show.gif",
          icons: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.github),
              onPressed: () {
                Config.launchURL(
                    "https://github.com/teujorge/Arduino-Water-Belt");
              },
            ),
          ],
          projectDesc:
              "Laser Tag, but with water! Carry a water sensetive vest and spray water on your friends in three different game modes.",
          projectTitle: "Water Tag",
          tech1: "Arduino",
          tech2: "Embedded System",
          tech3: "",
        ),
        FeatureProject(
          imagePath:
              "https://raw.githubusercontent.com/teujorge/teujorge.github.io/master/assets/videos/atlas_show.gif",
          icons: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.github),
              onPressed: () {
                Config.launchURL("https://github.com/teujorge/atlas");
              },
            ),
          ],
          projectDesc:
              "A pixel-art game where you, Atlas, defend your home from endless waves of enemies. You can choose to be a Knight, Mage or Archer in the quest to defend your home!",
          projectTitle: "Atlas Arena",
          tech1: "Dart",
          tech2: "Flutter",
          tech3: "FlameGame",
        ),
      ],
    );
  }
}
