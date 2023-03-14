import 'package:flutter/material.dart';
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
    String Text2 = "In this project I created a character in  low-poly style inspiered by the synthy poly Chasrs. This Mesh was then ainimated to Sit Down and stand up. The first time was done by hand and a second time based on motion capture. The looks of the character are inspiered by Caleb Widowgast of Critical Role ";
    String Text1 = "In diesem Projekt habe ich einen Charakter im Low-Poly Stil erstellt.\nDieser wurde dann auch verwendet um eine Animation zum hinsetzten und aufstehen zu erstellen.\nAls inspiration wurde der Charakter Caled Widowgast von Critical Role verwendet.";

    return Scaffold(
      backgroundColor: Coolers.secondaryColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body:ZStack([
          Center(child:
          VStack([
            title.richText.xl6.bold.color(Coolers.accentColor).make(),
            30.heightBox,
            VxBox().color(Coolers.accentColor).size(breite * 0.2, 6).make(),
            50.heightBox,
            HStack([
              Expanded(child: Image.asset(bild1)),
              Expanded(child: Image.asset(bild2))]),
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
