import 'package:flutter/material.dart';

import '../../res/styles.dart';

class QResult extends StatelessWidget {
  QResult({super.key, required this.result, required this.color});
  String result;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: Text(result, style: h18w500white),
        ),
      ],
    );
  }
}
