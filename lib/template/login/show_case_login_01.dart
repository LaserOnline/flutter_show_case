import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../module/state/state_qrcode.dart';

class ShowCaseLogin01 extends StatefulWidget {
  @override
  State<ShowCaseLogin01> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowCaseLogin01> {
  final String url = "";
  @override
  Widget build(BuildContext context) {
    final QrcodeViewModel controller = Get.put(QrcodeViewModel(url));
    return Scaffold(
      backgroundColor: Colors.amberAccent,
    );
  }
}
