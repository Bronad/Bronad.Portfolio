import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

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


      ]).scrollVertical(),
    );
  }
}