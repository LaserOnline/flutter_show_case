import 'package:flutter/material.dart';

class Chip05 extends StatefulWidget {
  const Chip05({Key? key}) : super(key: key);

  @override
  State<Chip05> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Chip05> {
  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.grey[300],
      child: Ink(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            print("T E S T");
          },
          child: const Chip(
            label: Text("Material Chip 05"),
            labelPadding: EdgeInsets.all(12),
            padding: EdgeInsets.all(4),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            avatar: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://qph.cf2.quoracdn.net/main-qimg-236991d480ba42652955d76a35b72749-lq"),
            ),
          ),
        ),
      ),
    );
  }
}
