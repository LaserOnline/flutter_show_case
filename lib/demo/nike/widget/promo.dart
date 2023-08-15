import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../../module/video/video.dart';

class Promo extends StatefulWidget {
  Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  late VideoPlayerController _controller;

  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('${Video.nike_promo}');

    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      setState(() {});
      _controller.setVolume(0.0);
      _controller.play();
      _controller.setLooping(true);
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight,
      // color: Color.fromARGB(255, 90, 74, 74),
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: Center(
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
