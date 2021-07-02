import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:website/utils/constants.dart';

class HeaderLogo extends StatelessWidget {
  final AutoScrollController controller;
  const HeaderLogo({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.0, left: 3.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async {
            await controller.scrollToIndex(0,
                preferPosition: AutoScrollPosition.begin);
            controller.highlight(0);
          },
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "A",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ".",
                  style: GoogleFonts.oswald(
                    color: kPrimaryColor,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
