import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/players.dart';

class PlayerInfoContainer extends StatelessWidget {
  PlayerInfoContainer({required this.player});
  Player player;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 362,
          height: 600,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
          child: Stack(
            children: [
              Positioned(
                left: 15,
                top: 26,
                child: Container(
                  width: 323,
                  height: 566,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 323,
                          height: 566,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28.62,
                        top: 20.25,
                        child: Container(
                          width: 96.37,
                          height: 135.03,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 96.37,
                                  height: 135.03,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7)),
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
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 96.37,
                                  height: 135.03,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 96.37,
                                  height: 138.89,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://api.sofascore1.com/api/v1/player/${player.id}/image"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 150.26,
                        top: 51.76,
                        child: SizedBox(
                          width: 109.37,
                          height: 72.02,
                          child: Text(
                            player.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 249,
                child: Text(
                  'Country:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 282,
                child: Text(
                  'Date of birth:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 315,
                child: Text(
                  'Height:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 348,
                child: Text(
                  'Foot:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 381,
                child: Text(
                  'Position:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 127,
                top: 249,
                child: Text(
                  player.country,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 166,
                top: 282,
                child: Text(
                  DateFormat('MMM dd, yyyy').format(
                      DateTime.fromMillisecondsSinceEpoch(
                          int.parse(player.Age) * 1000)),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 117,
                top: 315,
                child: Text(
                  player.height,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 348,
                child: Text(
                  'right',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 128,
                top: 381,
                child: Text(
                  player.position,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 414,
                child: Text(
                  'Clubs:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 443,
                child: Container(
                  width: 204,
                  height: 130,
                  decoration: ShapeDecoration(
                    color: Color(0xFF0988D1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
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
                left: 46,
                top: 451,
                child: Container(
                  width: 204,
                  height: 22,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 13,
                        top: 0,
                        child: Text(
                          player.teamName,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 20,
                        child: Container(
                          width: 204,
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 501,
                child: Container(
                  width: 204,
                  height: 22,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 13,
                        top: 0,
                        child: Text(
                          'RB Salzburg',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 20,
                        child: Container(
                          width: 204,
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 476,
                child: Container(
                  width: 204,
                  height: 22,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 13,
                        top: 0,
                        child: Text(
                          'Bor. Dortmund',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 20,
                        child: Container(
                          width: 204,
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 526,
                child: Container(
                  width: 204,
                  height: 22,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 13,
                        top: 0,
                        child: Text(
                          'Molde',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 20,
                        child: Container(
                          width: 204,
                          height: 2,
                          decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 551,
                child: Text(
                  'Bryne FK',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
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
