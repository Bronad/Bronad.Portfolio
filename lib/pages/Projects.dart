import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:portfolio/widgets/project_CGR.dart';
import 'package:portfolio/widgets/project_SPE.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Table.dart';
import '../widgets/GameofLife.dart';
import '../widgets/project_ANI.dart';

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
            "Projects \n".richText.withTextSpanChildren(["Selected Projects".textSpan.yellow400.make()]).xl4.make(),
          40.heightBox,
          Expanded(
              child: ThreeItemsTable(
                  items: [
            ProjectWidget(title: "Der Zauberlehrling", picture: "images/Background.png", URL: spe_project()),
            ProjectWidget(title: "Auto Modellierung", picture: "images/kek.jpg", URL: cgr_project()),
            ProjectWidget(title: "Charakter Modellieren\n und Animieren", picture: "images/kek.jpg", URL: ani_project()),
                    ProjectWidget(title: "Game of Life \n Software Projekt", picture: "images/kek.jpg", URL: gameofLife()),
                    ProjectWidget(title: "Game of Life \n Software Projekt", picture: "images/kek.jpg", URL: gameofLife()),
                    ProjectWidget(title: "Game of Life \n Software Projekt", picture: "images/kek.jpg", URL: gameofLife()),

          ])).w(MediaQuery.of(context).size.width * 0.8)
          ])
        ],
      ).p64().h(context.isMobile ? 800 : 800),

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

    return MaterialButton(
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => URL));},
      child: ZStack([
        Transform(
          transform: Matrix4.rotationY(pi),
          alignment: Alignment.center,
          child: Image.asset(picture,
            fit: BoxFit.cover,
          ),
        ).w(400),
      VStack([
        title.text.bold.white.xl2.wide.center.make(),
        20.heightBox
      ])
      ]).w(400).h(250).backgroundColor(Coolers.primaryColor)
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
