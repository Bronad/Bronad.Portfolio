import 'dart:math';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coolers.dart';
import '../widgets/appicons.dart';



class HeaderScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    var nameWidget = "Lars\nFranke".text.white.xl6.lineHeight(1).size(context.isMobile ?15:20).bold.make();
    var beschreibung = "Ich bin Lars Franke, 23 Jahre alt und studiere an Westfälischen Hoschschule Geslenkirchen aktuelle Medieninformatik. Ich suche aktuell ein spannedes Praktikum & einen Job! Ich sollte mein Stuidum gegen Ende 2023 / Anfang 2024 beendet haben. Ich ";
    var breite = MediaQuery.of(context).size.width;

    return SafeArea(
        child: VxBox(
          child: VStack([
            100.heightBox,
            ZStack([
              Row(
                  children: [
              VStack([
                30.heightBox,
                nameWidget,
                30.heightBox,
                VxBox().color(Coolers.accentColor).size(breite * 0.2, 8).make().shimmer(),
                50.heightBox,
                appicons(),
                50.heightBox,
                MaterialButton(
              onPressed: () {
                launchUrl((Uri.parse("https://drive.google.com/file/d/1KIDlpL5eSURPeTJW9Qh7x9Lc1FmfK52y/view?usp=share_link")));
              },
              hoverColor: Vx.purple700,
              shape: Vx.roundedSm,
              color: Coolers.accentColor,
              textColor: Coolers.primaryColor,
              child: "My Resume".richText.make(),
            ).h(50)

              ]).pSymmetric(
                //verschiebung von Header in breite
                h: context.percentWidth * 0.8,
                v: 1
              ),

            WidthBox(breite * 0.2),
            Expanded(child:
            VStack([
              PictureWidget(),
              40.heightBox,
              VStack([
              "Über mich".text.white.bold.xl4.widest.make(),
              15.heightBox,
              beschreibung.text.white.xl3.maxLines(5).make()
              ]),
            ])
            )
            ])
            ]).pOnly(left: 50).h(context.percentHeight * 60)
          ])
        ).width(breite).make());
  }
}

class PictureWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.rotationY(pi),
        alignment: Alignment.center,
        child: Image.asset("images/Schnurri.JPG",
        fit: BoxFit.cover,
        height: context.percentHeight * 20,
          width: 200,
        ),
    );
    
  }
}



