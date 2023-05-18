import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

class Cybersec extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String bildbg = "images/Background.png";
    String bild1 = "images/Ghidra.png";
    String bild2 = "images/jadx.png";
    double breite = MediaQuery.of(context).size.width;
    double hoehe = MediaQuery.of(context).size.height;
    String title2 = "Cybersecurity";
    String title = "Game of Life\nEin Spiel für Informatiker*innen";
    String Text2 = "I also managed to gain some experience in the IT Security Section. In the modal Practical Security, I was able to fill and practice the role of penetration tester. I analysed malware via a Decompiler like Jadx and learned to use Linux in a Vm, like Virtual Box. I am looking forward to learning even more about cybersecurity.";

    return Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body:ZStack([
          Center(child:
          VStack([
            title2.richText.xl6.bold.color(Coolers.accentColor).make(),
            30.heightBox,
            VxBox().color(Coolers.accentColor).size(breite * 0.2, 6).make().shimmer(),
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
