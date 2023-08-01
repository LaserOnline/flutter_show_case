import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widget/button_press.dart';
import '../view_model/controller.dart';
import '../widget/button_tapped.dart';

class ShowCaseBottom1 extends StatefulWidget {
  const ShowCaseBottom1({super.key});

  @override
  State<ShowCaseBottom1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowCaseBottom1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Style 1",
          style: TextStyle(color: Colors.white),
        ),
        leading: const IconButton(
          onPressed: NavigateBack,
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
        actions: const [
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
            onPressed: NavigateBack,
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: Press1,
                      child: buttonPressed1
                          ? MyButtonTapped(
                              icon: Icons.add_reaction_outlined,
                            )
                          : MyButtonPress(
                              icon: Icons.add_reaction_outlined,
                            ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: Press2,
                      child: buttonPressed2
                          ? MyButtonTapped(
                              icon: Icons.add_comment_outlined,
                            )
                          : MyButtonPress(
                              icon: Icons.add_comment_outlined,
                            ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: Press3,
                      child: buttonPressed3
                          ? MyButtonTapped(
                              icon: Icons.home,
                            )
                          : MyButtonPress(
                              icon: Icons.home,
                            ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: Press4,
                      child: buttonPressed4
                          ? MyButtonTapped(
                              icon: Icons.add_ic_call_sharp,
                            )
                          : MyButtonPress(
                              icon: Icons.add_ic_call_sharp,
                            ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }

  void Press1() {
    setState(() {
      buttonPressed1 = !buttonPressed1;
    });
  }

  void Press2() {
    setState(() {
      buttonPressed2 = !buttonPressed2;
    });
  }

  void Press3() {
    setState(() {
      buttonPressed3 = !buttonPressed3;
    });
  }

  void Press4() {
    setState(() {
      buttonPressed4 = !buttonPressed4;
    });
  }

  @override
  void dispose() {
    Clear();
    super.dispose();
  }
}
