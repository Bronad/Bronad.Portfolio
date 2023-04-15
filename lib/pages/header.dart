import 'dart:math';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/lanbutton.dart';
import 'package:portfolio/widgets/lanbutton.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coolers.dart';
import '../widgets/appicons.dart';
import '../widgets/lanbutton.dart';


const List<Widget> lan = <Widget>[
  Text("German"),
  Text("English")
]
;

class HeaderScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final List<bool> _selectedlan = <bool>[true, false];

    var nameWidget = "Lars\nFranke".text.white.xl6.lineHeight(1).size(context.isMobile ?18:24).bold.make();
    var beschreibungEN = "Ich bin Lars Franke, 23 Jahre alt und studiere an Westfälischen Hoschschule Geslenkirchen aktuelle Medieninformatik. Ich suche aktuell ein spannedes Praktikum & einen Job! Ich sollte mein Stuidum gegen Ende 2023 / Anfang 2024 beendet haben. Ich ";
    var beschreibungen = "I am Lars Franke, a 23-year-old media Informatics student at Westfälische Hochschule Gelsenkirchen. I am currently on the lookout for an internship and a part-time Job that can be managed along with my Masters Study. I am going to finish my Bachelor around the end of 2023 / beginning of 2024.";
    var breite = MediaQuery.of(context).size.width;
    var hoehe = MediaQuery.of(context).size.height;

    return SafeArea(
        child: VxBox(
          child: Stack(
            children: [
              FittedBox(
                  fit: BoxFit.fill,
                  child: Image(image: AssetImage("images/Testen4.jpg"))),
              VStack([
              //HStack([]),
              100.heightBox,
              ZStack([
                Row(
                    children: [
                VStack([
                  30.heightBox,
                  nameWidget,
                  30.heightBox,
                  VxBox().color(Coolers.accentColor).size(breite * 0.25, 8).make().shimmer(),
                  50.heightBox,
                  appicons(),
                  50.heightBox,
                  MaterialButton(
                onPressed: () {
                  launchUrl((Uri.parse("https://drive.google.com/file/d/1Slg5qDgt1XoHMV1GqPPwtAAyyGEnWGyP/view?usp=share_link")));
                },
                hoverColor: Vx.purple700,
                shape: Vx.roundedSm,
                color: Coolers.accentColor,
                textColor: Colors.white,    //Coolers.primaryColor,
                child: "My Resume".richText.size(18).make(),
              ).h(80).w(120)
                ]).pSymmetric(
                  //verschiebung von Header in breite
                  h: context.percentWidth * 0.8,
                  v: 0
                ),
              WidthBox(breite * 0.2),

              VStack(alignment: MainAxisAlignment.end,
                  crossAlignment: CrossAxisAlignment.end,
                  [
                //PictureWidget(),
                    (hoehe * 0.4).heightBox,
                VStack([
                "About Me".text.white.bold.xl4.size(context.isMobile ? 12 : 16).widest.make(),
                15.heightBox,
                  (beschreibungen).text.white.size(context.isMobile ? 8 : 12).xl3.maxLines(7).make()
                ]).color(Coolers.secondaryColor.withAlpha(150)).w(breite * 0.4),
              ]).w(breite*0.4), 50.widthBox,
              ])
              ]).pOnly(left: 50).h(context.percentHeight * 60)
            ]),
            ]
          )
        ).width(breite*1).height(hoehe * 0.8).make());
  }
}

class PictureWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.rotationY(pi),
        alignment: Alignment.center,
        child: Image(
            image : AssetImage("images/Schnurri.JPG"),
             height: 300,
             width: 200,)
    );
    
  }
}



