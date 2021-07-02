import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/models/header_item.dart';
import 'package:website/ui/components/contact/contact.dart';
import 'package:website/utils/constants.dart';

import 'components/about/about.dart';
import 'components/header/header.dart';
import 'components/header/header_row.dart';
import 'components/hero/hero_section.dart';
import 'components/projects/projects.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  double offset = 0;

  final scrollDirection = Axis.vertical;

  late AutoScrollController controller;

  final Color transparent = Color(0x00000000);

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 85, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List<HeaderItem> headerItems = [
      HeaderItem(
        title: "Home",
        onTap: () async {
          await controller.scrollToIndex(0,
              preferPosition: AutoScrollPosition.begin);
          controller.highlight(0);
        },
      ),
      HeaderItem(
        title: "About",
        onTap: () async {
          await controller.scrollToIndex(1,
              preferPosition: AutoScrollPosition.begin);
          controller.highlight(1);
        },
      ),
      HeaderItem(
        title: "Projects",
        onTap: () async {
          await controller.scrollToIndex(2,
              preferPosition: AutoScrollPosition.begin);
          controller.highlight(2);
        },
      ),
      HeaderItem(
        title: "Contact",
        onTap: () async {
          await controller.scrollToIndex(3,
              preferPosition: AutoScrollPosition.begin);
          controller.highlight(3);
        },
      ),
      HeaderItem(
        title: "Resume",
        onTap: () async {
          await canLaunch(kResumeUrl)
              ? await launch(kResumeUrl)
              : throw 'Could not launch $kResumeUrl';
        },
        isButton: true,
      ),
    ];

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? Container(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF0D47A1),
                                        Color(0xFF1976D2),
                                        Color(0xFF42A5F5),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 50.0,
                                  ),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 18.0),
                                ),
                                onPressed: headerItems[index].onTap,
                                child: Text(headerItems[index].title),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 25.0,
                            ),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 18.0),
                          ),
                          onPressed: headerItems[index].onTap,
                          child: Text(headerItems[index].title),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 16.0);
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: updateOffsetAccordingToScroll,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: offset > height ? -0 : -0.25 * offset,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: kHeroImage,
                height: height,
                width: width,
                fit: BoxFit.cover,
              ),
            ),
            ListView(
              scrollDirection: scrollDirection,
              controller: controller,
              children: [
                _wrapScrollTag(
                  index: 0,
                  child: Container(
                    height: height,
                    width: width,
                    child: HeroSection(),
                  ),
                ),
                _wrapScrollTag(
                  index: 1,
                  child: Container(
                    width: width,
                    child: About(),
                  ),
                ),
                _wrapScrollTag(
                  index: 2,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (ScrollNotification scrollNotification) {
                      return true;
                    },
                    child: Container(
                      width: width,
                      child: Projects(),
                    ),
                  ),
                ),
                _wrapScrollTag(
                  index: 3,
                  child: Container(
                    width: width,
                    child: Contact(),
                  ),
                ),
              ],
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              curve: Curves.easeOut,
              color: offset >= height - 90 ? kBackgroundColor : transparent,
              padding: EdgeInsets.only(bottom: 24.0),
              child: Header(
                scaffoldKey: _scaffoldKey,
                headerItems: headerItems,
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: controller,
        index: index,
        child: child,
        highlightColor: Colors.black.withOpacity(0.1),
      );

  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() => offset = scrollNotification.metrics.pixels);
    return true;
  }
}
