import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import '../view_model/controllerPin.dart';
import '../../../../../module/lottie/lottie.dart';

class ShowCaseOTP1 extends StatefulWidget {
  const ShowCaseOTP1({super.key});

  @override
  State<ShowCaseOTP1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowCaseOTP1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset("${LottieImages.otp1}"),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.15, top: height * 0.25),
                child: const Text(
                  "Verification",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // * Pin
            Padding(
              padding: EdgeInsets.only(top: height * 0.40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  SizedBox(
                    height: height * 0.1,
                    width: width * 0.15,
                    child: TextFormField(
                      controller: pin1,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FuncCheckAddOTP();
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty) {
                          FuncCheckDownOTP();
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "0",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  SizedBox(
                    height: height * 0.1,
                    width: width * 0.15,
                    child: TextFormField(
                      controller: pin2,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FuncCheckAddOTP();
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty) {
                          FuncCheckDownOTP();
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "0",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  SizedBox(
                    height: height * 0.1,
                    width: width * 0.15,
                    child: TextFormField(
                      controller: pin3,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FuncCheckAddOTP();
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty) {
                          FuncCheckDownOTP();
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "0",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  SizedBox(
                    height: height * 0.1,
                    width: width * 0.15,
                    child: TextFormField(
                      controller: pin4,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FuncCheckAddOTP();
                        }
                        if (value.isEmpty) {
                          FuncCheckDownOTP();
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "0",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                ],
              ),
            ),
            // * Pin
            otp.length == 4
                ? Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.65,
                      right: width * 0.20,
                      left: width * 0.20,
                    ),
                    child: InkWell(
                      onTap: Successfully,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: height * 0.095,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                  color: Colors.grey[100],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.10),
                                child: Icon(
                                  Icons.skip_next,
                                  color: Colors.white,
                                  size: width * 0.1,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }

  @override
  void dispose() {
    Clear();
    super.dispose();
  }
}
