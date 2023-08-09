import 'package:flutter/material.dart';
import '../../res/styles.dart';

class Button1 extends StatelessWidget {
  Button1({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Text(title, style: h18w500white),
    );
  }
}
