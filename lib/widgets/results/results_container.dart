import 'package:flutter/material.dart';

import '../../res/styles.dart';

class ResultsContainer extends StatelessWidget {
  ResultsContainer({required this.won});
  int won;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 287,
          height: 205,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 287,
                  height: 205,
                  decoration: ShapeDecoration(
                    color: Color(0xFF02A7E7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 155,
                top: 55,
                child: Container(
                  width: 81,
                  height: 31,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 31,
                          height: 31,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 31,
                                  height: 31,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: yellow,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 2,
                        child: Text(
                          won.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 55,
                child: Text(
                  'You won:',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 110,
                child: Text(
                  'Mistakes: 1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
