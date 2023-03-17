import 'package:flutter/material.dart';
import 'package:portfolio/coolers.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ytplay extends StatefulWidget {

  const ytplay({Key? key}) : super(key: key);

  @override
  State<ytplay> createState() => _ytplayState();
}

class _ytplayState extends State<ytplay> {

  final videoURL = "https://www.youtube.com/watch?v=7sAjRqJP0vw";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
    flags: const YoutubePlayerFlags(autoPlay: false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        bottomActions: [
          CurrentPosition(),
          ProgressBar(
            isExpanded: true,
            colors: const ProgressBarColors(
              playedColor: Coolers.secondaryColor,
              handleColor: Coolers.accentColor,
            ),
          )
        ],
      ).h(600)
    ;
  }
}
