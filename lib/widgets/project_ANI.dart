import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

class ani_project extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    String bildbg = "images/Background.png";
    String bild1 = "images/Ani_bild1.png";
    String bild2 = "images/Ani_bild2.png";
    double breite = MediaQuery.of(context).size.width;
    double hoehe = MediaQuery.of(context).size.height;
    String title = "Char Modellieren & Animieren";
    String Text2 = "In this project I created a character in low-poly style inspired by the synthy poly Characters. This mesh was then animated to Sit Down and stand up. The first time was done by hand and a second time based on motion capture. The looks of the character are inspired by Caleb Widowgast of Critical Role.";
    String Text1 = "In diesem Projekt habe ich einen Charakter im Low-Poly Stil erstellt.\nDieser wurde dann auch verwendet um eine Animation zum hinsetzten und aufstehen zu erstellen.\nAls inspiration wurde der Charakter Caled Widowgast von Critical Role verwendet.";

    return Scaffold(
      backgroundColor: Coolers.secondaryColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body:ZStack([
          Center(child:
          VStack([
            title.richText.xl6.bold.color(Coolers.accentColor).make(),
            30.heightBox,
            VxBox().color(Coolers.accentColor).size(breite * 0.2, 6).make().shimmer(),
            50.heightBox,
            // HStack([
            //   Expanded(child: Image.asset(bild1)),
            //   Expanded(child: Image.asset(bild2))]),
            Html(
              data: '<iframe width="1200"  height="675" src="https://www.youtube.com/embed/MDZ0kc4o5tc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; allowfullscreen"></iframe>',
            ),
            //https://www.youtube.com/embed/MDZ0kc4o5tc
            50.heightBox,
            Text2.text.xl3.color(Colors.white).make(),
            50.heightBox,
          ]).centered().w(breite * 0.7),
          ),
        ]).w(breite).h(hoehe).backgroundColor(Coolers.secondaryColor),

        floatingActionButton: FloatingActionButton(
          onPressed:() {Navigator.pop(context);},
          child: Icon(Icons.arrow_back),
        ));
  }
}
