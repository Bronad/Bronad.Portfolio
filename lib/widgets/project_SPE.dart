import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

class spe_project extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String bildbg = "images/Background.png";
    String bild1 = "images/SPE_strat.png";
    String bild2 = "images/spe_schlüssel.png";
    double breite = MediaQuery.of(context).size.width;
    double hoehe = MediaQuery.of(context).size.height;
    String title = "Der Zauberlehrling";
    String Text1 = "Dieses kleine Spiel entstand aus einem Praktikum aus dem Modul Spieleentwickelung \nEs ist ein kleines Puzzel Adventure und erstellt wurde das Spiel in der Unreal Engine 5 \nMan spielt einen Zauberlehrling welcher die Küche Putzen muss. Anstatt dies per Hand zu erlediegen, möchte er ein Buch vom Zaubermeister klauen damit sich die Arbeit von selbst erledigt.";

    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body:ZStack([
        //Expanded(child: Image.asset(bildbg)),
          Center(child: 
      VStack([
        title.richText.xl6.bold.color(Coolers.accentColor).make(),
        30.heightBox,
        VxBox().color(Coolers.accentColor).size(breite * 0.2, 6).make().shimmer(),
        50.heightBox,
        HStack([
          Expanded(child: Image.asset(bild1)),
          Expanded(child: Image.asset(bild2))]).w(breite * 0.8).h(hoehe * 0.6)
        ,

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
