import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../lottie/lottie.dart';
import 'controller.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    SplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          child: Lottie.asset("${LottieImages.splash}"),
        ),
      ),
    );
  }
}
