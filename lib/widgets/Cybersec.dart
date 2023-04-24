import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

class Cybersec extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String bildbg = "images/Background.png";
    String bild1 = "images/Game_of_life_bild10 - Kopie.png";
    String bild2 = "images/spe_schlüssel.png";
    double breite = MediaQuery.of(context).size.width;
    double hoehe = MediaQuery.of(context).size.height;
    String title2 = "Cybersecurity";
    String title = "Game of Life\nEin Spiel für Informatiker*innen";
    String Text2 = "In the Sector of IT Security, I managed to accuire some Expierience as well. In the mudual Practical Securiety i was able to fill and practice the roll of penetration tester. I am looking forword to learn even more about this filed.";
    String Text1 = "Dieses Projekt entstand in Zusammenarbeit mit einer Projektgruppe im Rahmen des verpflichtendem Softwareprojekts.\nWir erstellten auf Basis eines Prototypen ein Spiel in dem Spielende einen Algorythmus Programmieren der gegen andere antritt.\nDiese Algorythmen steuern Agenten die dan in einer Arena gegeneinander.\nNach einer bestimmten Rundenanzahl gewinnt der/die jenige mit den meisten Agenten.";

    return Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body:ZStack([
          Center(child:
          VStack([
            title2.richText.xl6.bold.color(Coolers.accentColor).make(),
            30.heightBox,
            VxBox().color(Coolers.accentColor).size(breite * 0.2, 6).make().shimmer(),
            50.heightBox,
            Expanded(child: Image.asset(bild1)),
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
