import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoViewPlayer extends StatelessWidget {
  final String? mediaId;

  const VideoViewPlayer({Key? key, this.mediaId}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Container(
      child: new BetterPlayer.network(mediaId!,
          betterPlayerConfiguration: BetterPlayerConfiguration(
aspectRatio: 9/16,
              autoPlay: true,
              looping: true,
              controlsConfiguration: BetterPlayerControlsConfiguration (
                enableFullscreen: false,
                showControls: false,
                showControlsOnInitialize: false
              )
          )),
    );
  }
}