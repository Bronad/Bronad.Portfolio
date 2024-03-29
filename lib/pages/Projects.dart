import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:portfolio/widgets/project_CGR.dart';
import 'package:portfolio/widgets/project_SPE.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Table.dart';
import '../widgets/Cybersec.dart';
import '../widgets/Desgins.dart';
import '../widgets/GameofLife.dart';
import '../widgets/project_ANI.dart';
import '../widgets/project_SPE2.dart';

class projects extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.secondaryColor,
      child:
        Flex(direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VStack([
            "My Projects \n".richText.xl5.color(Colors.white).make(), //withTextSpanChildren(["Selected Projects".textSpan.yellow400.make()]).xl4.make(),
          40.heightBox,
          Container(
              child: ThreeItemsTable(
                  items: [
                    ProjectWidgetlink(title: "Frontend_Practice", picture: "images/33-2-1.png", URL: "https://github.com/Bronad/PracticeFrontend"),
            ProjectWidget(title: "Der Zauberlehrling", picture: "images/Background.png", URL: spe_project()),
            ProjectWidget(title: "car modelling", picture: "images/CGR_bg.png", URL: cgr_project()),
            ProjectWidget(title: "character modelling\n and animate", picture: "images/Ani_bild1.png", URL: ani_project()),
                    ProjectWidget(title: "Game of Life \n Software project", picture: "images/Logo_Game_of_Life.png", URL: gameofLife()),
                    ProjectWidget(title: "Desgins", picture : "images/Zeichenfläche 1.png", URL: Desgins()),
                    ProjectWidget(title: "Cybersecurity", picture: "images/Ghidra.png", URL: Cybersec()),
                    //ProjectWidgetwithoutURL(title: "This Site", picture: "Images/Plus_symbol.svg.png"),
                    Visibility(
                      child: Text("Gone"),
                      visible: false,
                    ),Visibility(
                      child: Text("Gone"),
                      visible: false,
                    ),
          ])).w(MediaQuery.of(context).size.width * 0.85)
          ])
        ],
      ).p64().h(context.isMobile ? 1700 : 1700),

    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;
  final String picture;
  final Widget URL;
  const ProjectWidget({Key? key, required this.title, required this.picture, required this.URL}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      MaterialButton(
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => URL));},
      child:
      VStack([
        Center(child:
        title.text.bold.white.xl2.wide.center.make(),),
        20.heightBox,
        Transform(
          transform: Matrix4.rotationY(pi),
          alignment: Alignment.center,
          child:
            Image(image: AssetImage(picture),
            fit: BoxFit.cover,
            )).w(400).h(300),
      ]).w(400).backgroundColor(Coolers.primaryColor)
    );



    // return title.text.bold.white.xl.wide.center
    //     .make()
    //     .box
    //     .p8
    //     .roundedLg
    //     .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
    //     .alignCenter
    //     .square(200)
    //     .make()
    //     .p16();
  }
}

class ProjectWidgetwithoutURL extends StatelessWidget {
  final String title;
  final String picture;
  const ProjectWidgetwithoutURL({Key? key, required this.title, required this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Material(
          child:
          VStack([
            Center(child:
            title.text.bold.white.xl2.wide.center.make(),),
            20.heightBox,
            Transform(
                transform: Matrix4.rotationY(pi),
                alignment: Alignment.center,
                child:
                Image(image: AssetImage(picture),
                  fit: BoxFit.cover,
                )).w(400).h(300),
          ]).w(400).backgroundColor(Coolers.primaryColor)
      );
  }
}

class ProjectWidgetlink extends StatelessWidget {
  final String title;
  final String picture;
  final String URL;
  const ProjectWidgetlink({Key? key, required this.title, required this.picture, required this.URL}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      MaterialButton(
          onPressed: () {launchUrl(Uri.parse(URL));},
          child:
          VStack([
            Center(child:
            title.text.bold.white.xl2.wide.center.make(),),
            20.heightBox,
            Align(
                alignment: Alignment.center,
                child:
                Image(image: AssetImage(picture),
                  fit: BoxFit.cover,
                )).w(400).h(300),
          ]).w(400).backgroundColor(Coolers.primaryColor)
      );
  }
}