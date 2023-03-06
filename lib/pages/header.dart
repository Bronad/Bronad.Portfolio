import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coolers.dart';



class HeaderScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    var nameWidget = "Lars\nFranke".text.white.xl6.lineHeight(1).size(context.isMobile ?15:20).bold.make();
    var breite = MediaQuery.of(context).size.width * 0.15;

    return SafeArea(
        child: VxBox(
          child: VStack([
            ZStack([
              PictureWidget(),
              VStack([
                30.heightBox,
                nameWidget,
                30.heightBox,
                VxBox().color(Coolers.accentColor).size(breite * 2, 8).make().shimmer(),
                50.heightBox,

              ])

            ])
          ])
        ).make());
  }
}

class PictureWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.asset("images/kek.jpg");

    //   Transform(
    //     transform: Matrix4.rotationY(pi),
    //     alignment: Alignment.bottomLeft,
    //     child: Image.asset("images/kek.jpg",
    //     fit: BoxFit.cover,
    //     height: context.percentHeight * 60,),
    // );
    
  }
}

