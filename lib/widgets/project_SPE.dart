import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

class spe_project extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String Text1 = "Dieses kleine Spiel entstand aus einem Praktikum aus dem Modul Spieleentwickelung \n Es ist ein kleines Puzzel Adventure und erstellt wurde das Spiel in der Unreal Engine 5 \n Man spielt einen Zauberlehrling welcher die Küche Putzen muss. Anstatt dies per Hand zu erlediegen, möchte er ein Buch vom Zaubermeister klauen damit sich die Arbeit von selbst erledigt.";

    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body:
      VStack([
        "LUL".text.xl4.make(),
        Text1.text.xl4.color(Colors.black).make(),


      ]).centered().backgroundColor(Coolers.white),

      floatingActionButton: FloatingActionButton(
          onPressed:() {Navigator.pop(context);},
          child: Icon(Icons.arrow_back),
    ));
  }
}
