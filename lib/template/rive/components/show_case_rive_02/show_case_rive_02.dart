import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../../../../module/animation/animation.dart';

class ShowCaseRive02 extends StatefulWidget {
  const ShowCaseRive02({super.key});

  @override
  State<ShowCaseRive02> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowCaseRive02> {
  Artboard? riveArtboard;
  SMIBool? isDance;
  SMITrigger? isLookUp;
  @override
  void initState() {
    super.initState();
    rootBundle.load(AnimationRive.Muscot).then(
      (data) async {
        try {
          final file = RiveFile.import(data);
          final artboard = file.mainArtboard;
          var controller =
              StateMachineController.fromArtboard(artboard, 'birb');
          if (controller != null) {
            artboard.addController(controller);
            isDance = controller.findSMI('dance');
            isLookUp = controller.findSMI('look up');
          }
          setState(() => riveArtboard = artboard);
        } catch (e) {
          print(e);
        }
      },
    );
  }

  void toggleDance(bool newValue) {
    setState(() => isDance!.value = newValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: riveArtboard == null
          ? const SizedBox()
          : Column(
              children: [
                Expanded(
                  child: Rive(
                    artboard: riveArtboard!,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Dance'),
                    Switch(
                      value: isDance!.value,
                      onChanged: (value) => toggleDance(value),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  child: const Text('Look up'),
                  onPressed: () => isLookUp?.value = true,
                ),
                const SizedBox(height: 12),
              ],
            ),
      backgroundColor: Colors.pink[500],
    );
  }
}
