import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/utils/constants.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 75.0),
      alignment: Alignment.center,
      color: kBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 40.0),
            child: SelectableText(
              "ABOUT ME",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                Card(
                  margin: EdgeInsets.all(15.0),
                  child: Container(
                    constraints: BoxConstraints(
                        minWidth: 100, maxWidth: 400, minHeight: 150),
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 35.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SelectableText(
                          "About 1",
                          style: GoogleFonts.oswald(
                            color: kPrimaryColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        SelectableText(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: TextStyle(
                            color: kCaptionColor,
                            fontSize: 15.0,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(15.0),
                  child: Container(
                    constraints: BoxConstraints(
                        minWidth: 100, maxWidth: 400, minHeight: 150),
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 35.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SelectableText(
                          "About 2",
                          style: GoogleFonts.oswald(
                            color: kPrimaryColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        SelectableText(
                          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          style: TextStyle(
                            color: kCaptionColor,
                            fontSize: 15.0,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(15.0),
                  child: Container(
                    constraints: BoxConstraints(
                        minWidth: 100, maxWidth: 400, minHeight: 150),
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 35.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SelectableText(
                          "About 3",
                          style: GoogleFonts.oswald(
                            color: kPrimaryColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        SelectableText(
                          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
                          style: TextStyle(
                            color: kCaptionColor,
                            fontSize: 15.0,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
