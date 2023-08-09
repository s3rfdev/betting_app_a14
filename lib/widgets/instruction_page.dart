import 'package:flutter/material.dart';

class InstructionContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 316,
          height: 416,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 316,
                  height: 416,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 49,
                child: SizedBox(
                  width: 276,
                  child: Text(
                    '   The app collects data on some players, based on which an internal survey is conducted in several variations.\n \n   You can find the answers to the questions by studying the information in the app, but you will have to memorize it.\n\n   There is a game element in the surveys, which allows you to test your confidence in your knowledge. \n\n   It uses in-game currency, which has nothing to do with real currency.\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w500,
                    ),
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
