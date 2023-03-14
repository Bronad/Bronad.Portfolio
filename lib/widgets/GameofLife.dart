import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

class gameofLife extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String bildbg = "images/Background.png";
    String bild1 = "images/Game_of_life_bild1.png";
    String bild2 = "images/spe_schlüssel.png";
    double breite = MediaQuery.of(context).size.width;
    double hoehe = MediaQuery.of(context).size.height;
    String title = "Game of Life\nEin Spiel für Informatiker*innen";
    String Text1 = "Dieses Projekt entstand in Zusammenarbeit mit einer Projektgruppe im Rahmen des verpflichtendem Softwareprojekts.\nWir erstellten auf Basis eines Prototypen ein Spiel in dem Spielende einen Algorythmus Programmieren der gegen andere antritt.\nDiese Algorythmen steuern Agenten die dan in einer Arena gegeneinander.\nNach einer bestimmten Rundenanzahl gewinnt der/die jenige mit den meisten Agenten.";
    return Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body:ZStack([
          Center(child:
          VStack([
            title.richText.xl6.bold.color(Coolers.accentColor).make(),
            30.heightBox,
            VxBox().color(Coolers.accentColor).size(breite * 0.2, 6).make().shimmer(),
            50.heightBox,
            Expanded(child: Image.asset(bild1)),
            50.heightBox,
            Text1.text.xl3.color(Colors.white).make(),
            50.heightBox,

          ]).centered().w(breite * 0.5),
          ),
        ]).w(breite).h(hoehe).backgroundColor(Coolers.secondaryColor),

        floatingActionButton: FloatingActionButton(
          onPressed:() {Navigator.pop(context);},
          child: Icon(Icons.arrow_back),
        ));
  }
}
