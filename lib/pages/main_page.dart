import 'dart:html';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webapp/model/map_model.dart';
import 'package:webapp/state/app_state.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
                child :
            Container(
              color: Colors.lightBlue,
              ))
          ],)

      ),
    );
  }
}