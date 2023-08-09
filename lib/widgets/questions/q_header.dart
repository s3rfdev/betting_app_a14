import 'package:flutter/material.dart';

import '../../res/styles.dart';

class QHeader extends StatelessWidget {
  QHeader({
    super.key,
    required this.pos,
    required this.money,
  });

  int pos;
  int money;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          CircleAvatar(backgroundColor: red, radius: 10),
          SizedBox(width: 10),
          CircleAvatar(backgroundColor: pos > 1 ? red : grey, radius: 10),
          SizedBox(width: 10),
          CircleAvatar(backgroundColor: pos > 2 ? red : grey, radius: 10),
          Expanded(child: SizedBox()),
          CircleAvatar(backgroundColor: yellow, radius: 15),
          SizedBox(width: 10),
          Text(money.toString(), style: h24w500Black),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
