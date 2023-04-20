import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:portfolio/pages/Projects.dart';
import 'package:velocity_x/velocity_x.dart';
import 'foooter.dart';

import 'header.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {

    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
        30.heightBox.color(Coolers.accentColor),
        projects(),
        FooterScreen()
      ]).scrollVertical(),
    );
  }
}