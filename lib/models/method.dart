import 'package:url_launcher/url_launcher.dart';

class Method {
  launchURL(String link) async {
    String url = link;

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url.';
    }
  }

  launchEmail() async {
    const url = "mailto:amitpalsbadhan@gmail.com";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url.';
    }
  }
}
