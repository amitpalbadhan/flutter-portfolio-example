import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/utils/constants.dart';

import 'carousel.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 75.0),
      alignment: Alignment.center,
      color: kDangerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 40.0),
            child: SelectableText(
              "PROJECTS",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.15),
            child: Carousel(),
          ),
        ],
      ),
    );
  }
}
