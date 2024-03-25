// ignore_for_file: prefer_const_constructors

import 'package:login/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Addition extends StatelessWidget {
  final BuildContext context;

  const Addition({Key? key, required this.context}) : super(key: key);

  void navigateToPreviousScreen() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    VideoPlayerController? _controller;
    Future<void>? _initializeVideoPlayerFuture;

    _controller = VideoPlayerController.asset('assets/videos/add.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: navigateToPreviousScreen,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return VideoPlayer(_controller!);
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ),
          CustomIconButton(
            child: const Icon(Icons.play_arrow),
            height: 35,
            width: 35,
            onTap: () {
              if (_controller!.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            },
          ),
        ],
      ),
    );
  }
}
