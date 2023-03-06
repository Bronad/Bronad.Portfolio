import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard({
    Key? key,
    this.banner,
    this.projectIcon,
    this.projectLink,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
  }) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        //   boxShadow:
        //     BoxShadow(
        //       color: Colors.white30,
        //       blurRadius: 12.0,
        //       offset: const Offset(0.0, 0.0),
        //     ),
        // )
      )

        ,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.projectIcon != null
                    ? (width > 1135 || width < 950)
                    ? Image.asset(
                  widget.projectIcon!,
                  height: height * 0.05,
                )
                    : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      widget.projectIcon!,
                      height: height * 0.03,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      widget.projectTitle,
                      //style: AppText.b2b,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
                    : Container(),
                widget.projectIconData != null
                    ? Icon(
                  widget.projectIconData,
                  //color: AppTheme.c!.primary!,
                  size: height * 0.1,
                )
                    : Container(),
                (width > 1135 || width < 950)
                    ? SizedBox(
                  height: height * 0.02,
                )
                    : const SizedBox(),
                (width > 1135 || width < 950)
                    ? Text(
                  widget.projectTitle,
                  //style: AppText.b2b,
                  textAlign: TextAlign.center,
                )
                    : Container(),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  widget.projectDescription,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.banner != null
                    ? Image.asset(
                  widget.banner!,
                )
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}