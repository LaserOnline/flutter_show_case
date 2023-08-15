import 'package:flutter/material.dart';
import 'button.dart';
import '../images/Logo.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String LogoNike = Logo.NikeImages1;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.symmetric(horizontal: (width + height) * 0.025),
          padding: EdgeInsets.all((height + width) * 0.025),
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.20),
                    child: const Text(
                      "Get 50% Promo",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.20),
                        child: const MyButton(
                          title: "Nike",
                          icon: Icons.arrow_forward_ios_rounded,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: (height + width) * 0.009,
          right: -width / 2.1,
          child: Image.asset(
            LogoNike,
            width: (height + width) / 2,
            height: (height + width) / 9,
          ),
        ),
      ],
    );
  }
}
