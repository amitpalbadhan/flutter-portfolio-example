import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/models/project_model.dart';
import 'package:website/utils/constants.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final controller = PageController(initialPage: 0, viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kBackgroundColor,
      ),
      padding: EdgeInsets.symmetric(vertical: 50.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 16),
            SizedBox(
              height: 300,
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: controller,
                children: projectItems
                    .map(
                      (project) => Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Container(
                          alignment: Alignment.center,
                          height: 280,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10.0),
                              SelectableText(
                                project.title,
                                style: GoogleFonts.oswald(
                                  color: kPrimaryColor,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w900,
                                  height: 1.3,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SelectableText(
                                  project.description,
                                  style: TextStyle(
                                    color: kCaptionColor,
                                    fontSize: 20.0,
                                    height: 1.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              ElevatedButton(
                                onPressed: () {
                                  _launchURL(project.link);
                                },
                                child: Text('Link'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(height: 16),
            Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: projectItems.length,
                effect: ExpandingDotsEffect(
                  expansionFactor: 3,
                  dotColor: kDangerColor,
                  activeDotColor: kPrimaryColor,
                ),
                onDotClicked: (index) {
                  controller.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
