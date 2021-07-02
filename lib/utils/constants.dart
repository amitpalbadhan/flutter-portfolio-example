import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromRGBO(255, 0, 110, 1);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color(0xFF1976D2);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

const String kHeroImage =
    'https://images.unsplash.com/photo-1507502707541-f369a3b18502?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920';

const String kResumeUrl = 'https://api.flutter.dev/';

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
