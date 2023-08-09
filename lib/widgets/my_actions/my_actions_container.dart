import 'package:flutter/material.dart';
import '../../res/styles.dart';

class MyActionsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.all(20),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/loading.png'),
              SizedBox(width: 40),
              Text(
                'Won: 5\nLose: 2',
                style: h24w500Black,
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Max win:     ', style: h24w500Black),
              CircleAvatar(backgroundColor: yellow, radius: 15),
              Text('  20', style: h24w500Black),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sum win:     ', style: h24w500Black),
              CircleAvatar(backgroundColor: yellow, radius: 15),
              Text('  20', style: h24w500Black),
            ],
          ),
        ],
      ),
    );
  }
}
