import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../../module/video/video.dart';

class Splash_Screen_Nike extends StatefulWidget {
  const Splash_Screen_Nike({super.key});

  @override
  State<Splash_Screen_Nike> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Splash_Screen_Nike> {
  late VideoPlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(
                    _controller,
                  ),
                )
              : Container(),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('${Video.nike}')
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(0.0);
    _playVideo();
  }

  void _playVideo() async {
    _controller.play();
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamedUntil('/nike', (route) => route.isFirst);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
