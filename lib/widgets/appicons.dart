import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class appicons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return [
      Icon(FontAwesomeIcons.twitter, color: Colors.white).mdClick(() {launchUrl(Uri.parse("https://twitter.com/Br0nad"));}).make(),
      25.widthBox,
      Icon(FontAwesomeIcons.twitch, color: Colors.white).mdClick(() {launchUrl(Uri.parse("https://www.twitch.tv/br0nad"));}).make(),
      25.widthBox,
      Icon(FontAwesomeIcons.linkedin, color: Colors.white).mdClick(() {launchUrl(Uri.parse("https://www.linkedin.com/in/lars-franke-762635258/"));}).make(),
      25.widthBox,
      Icon(FontAwesomeIcons.github, color: Colors.white).mdClick(() {launchUrl(Uri.parse("https://github.com/Bronad"));}).make(),
    ].hStack();
  }
}
