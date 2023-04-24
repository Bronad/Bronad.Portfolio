import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/coolers.dart';
import 'package:portfolio/widgets/appicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:mailto/mailto.dart';


class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Wanna get into contact?\nLet's talk.".text.center.white.xl2.make(),
              10.heightBox,
              "lars.franke.dev@gmail.com"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make().onTap(() {
                    launchUrl(Uri.parse("mailto:lars.franke.dev@gmail.com"));
                    //Code
              })
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Wanna get into contact?\nLet's talk.".text.center.white.xl2.make(),
              10.widthBox,
              "lars.franke.dev@gmail.com"
                  .text
                  .color(Coolers.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolers.accentColor)
                  .p16
                  .rounded
                  .make().onTap(() {
                launchUrl(Uri.parse("mailto:lars.franke.dev@gmail.com"));
              }),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        "Thanks for your interest, ".richText.semiBold.white.withTextSpanChildren(
            ["that's all folks.".textSpan.gray500.make()]).make(),
        25.heightBox,
        //appicons().scale(scaleValue: 1.5),
        appicons(),
        30.heightBox,
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}