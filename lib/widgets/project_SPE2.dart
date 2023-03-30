import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'ytplayer.dart';

class spe_project2 extends StatefulWidget {
  const spe_project2({Key? key}) : super(key: key);

  @override
  State<spe_project2> createState() => _spe_project2State();
}

class _spe_project2State extends State<spe_project2> {

  @override
  Widget build(BuildContext context) {

    String bildbg = "images/Background.png";
    String bild1 = "images/SPE_strat.png";
    String bild2 = "images/spe_schlüssel.png";
    double breite = MediaQuery.of(context).size.width;
    double hoehe = MediaQuery.of(context).size.height;
    String title = "Der Zauberlehrling";
    String text2 = "This little game was created as part of the modul Gamedevelopement. The game is about puzzles and exploring and was created with Unreal Engine 5. You are playing an sorcerers apprentice who has to clean the kitchen by hand. Instead of doing that, you want to steal a book from your master's library, to solve this problem with magic.";
    String Text1 = "Dieses kleine Spiel entstand aus einem Praktikum aus dem Modul Spieleentwickelung \nEs ist ein kleines Puzzel Adventure und erstellt wurde das Spiel in der Unreal Engine 5 \nMan spielt einen Zauberlehrling welcher die Küche Putzen muss. Anstatt dies per Hand zu erlediegen, möchte er ein Buch vom Zaubermeister klauen damit sich die Arbeit von selbst erledigt.";

    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body:ZStack([
          Center(child: 
      VStack([
        title.richText.xl6.bold.color(Coolers.accentColor).make(),
        30.heightBox,
        VxBox().color(Coolers.accentColor).size(breite * 0.2, 6).make().shimmer(),
        50.heightBox,
        ytplay(),
        50.heightBox,
        text2.text.xl3.color(Colors.white).make(),
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
