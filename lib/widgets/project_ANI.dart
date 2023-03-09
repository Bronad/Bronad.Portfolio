import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

class ani_project extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    String bildbg = "images/Background.png";
    String bild1 = "images/Ani_bild1";
    String bild2 = "images/Ani_bild2";
    double breite = MediaQuery.of(context).size.width;
    double hoehe = MediaQuery.of(context).size.height;
    String title = "Char Modellieren & Animieren";
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
            Expanded(child: Image.asset(bild1)),
            "LUL".text.xl3.make(),
            50.heightBox,
            Text1.text.xl3.color(Colors.white).make(),
            50.heightBox,
            Expanded(child: Image.asset(bild2))


          ]).centered().w(breite * 0.5),
          ),
        ]).w(breite).h(hoehe),

        floatingActionButton: FloatingActionButton(
          onPressed:() {Navigator.pop(context);},
          child: Icon(Icons.arrow_back),
        ));
  }
}
