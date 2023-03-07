import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

class projects extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.secondaryColor,
      child:
        Flex(direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            "Projects \n".richText.withTextSpanChildren(["Selected Projects".textSpan.yellow400.make()]).xl4.make(),
          20.widthBox,
        ],
      ).p64().h(context.isMobile ? 800 : 800),

    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;
  const ProjectWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}
