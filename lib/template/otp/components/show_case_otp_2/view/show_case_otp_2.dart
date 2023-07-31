import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../../module/lottie/lottie.dart';
import '../view_model/controllerPin.dart';

class ShowCaseOTP2 extends StatefulWidget {
  const ShowCaseOTP2({super.key});

  @override
  State<ShowCaseOTP2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowCaseOTP2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: height * 0.019,
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset("${LottieImages.snedSMS}"),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.40, left: width * 0.12),
            child: Text(
              "Verification ",
              style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.050,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: height * 0.47,
              right: width * 0.35,
              left: width * 0.35,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: time_otp < 15 ? Colors.white : Colors.black,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              height: height * 0.095,
              child: Center(
                child: Text(
                  "${time_otp}",
                  style: TextStyle(
                    color: time_otp < 15 ? Colors.red : Colors.white,
                    fontSize: height * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }

  @override
  void initState() {
    super.initState();
    StartAgain();
    TimeSeconds();
  }

  @override
  void dispose() {
    ControllerClear();
    StartAgain();
    super.dispose();
  }

  TimeSeconds() async {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (time_otp > 0) {
        setState(() => time_otp--);
        print("${time_otp}");
      } else {
        ControllerClear();
      }
    });
  }
}
