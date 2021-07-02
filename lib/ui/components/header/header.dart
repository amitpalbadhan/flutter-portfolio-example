import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:website/models/header_item.dart';
import 'package:website/utils/screen_helper.dart';

import 'header_logo.dart';
import 'header_row.dart';

class Header extends StatelessWidget {
  final scaffoldKey;
  final AutoScrollController controller;
  final List<HeaderItem> headerItems;

  const Header({
    Key? key,
    this.scaffoldKey,
    required this.headerItems,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: Padding(
          padding: EdgeInsets.only(top: 8.0, right: 15.0),
          child: buildHeader(),
        ),
        tablet: buildHeader(),
        mobile: buildMobileHeader(),
      ),
    );
  }

  Widget buildMobileHeader() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderLogo(
              controller: controller,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.bars),
              onPressed: () {
                scaffoldKey.currentState.openEndDrawer();
              },
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(controller: controller),
          HeaderRow(
            headerItems: headerItems,
          ),
        ],
      ),
    );
  }
}
