import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {

  final Widget child;
  final int index;
  final String appBarTitle;

  const BasePage({Key? key, required this.child, required this.index, required this.appBarTitle}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Lars Franke - ${widget.appBarTitle}") ,
      ),
    );

  }
}