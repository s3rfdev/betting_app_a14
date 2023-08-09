import 'package:flutter/material.dart';

import '../../res/styles.dart';

class QBody extends StatefulWidget {
  QBody({
    required this.question,
    required this.bet,
    required this.setBet,
  });
  String question;
  int bet;
  Function setBet;
  @override
  State<QBody> createState() => _QBodyState();
}

class _QBodyState extends State<QBody> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.bet.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 288,
          height: 244,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 119,
                child: Container(
                  width: 287,
                  height: 125,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 287,
                          height: 125,
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
                        left: 14,
                        top: 82,
                        child: Text(
                          'Bet:',
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
                        left: 70,
                        top: 79,
                        child: Container(
                          width: 86,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE7E7E7),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 163,
                        top: 80,
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
                                child: Stack(children: [
                                  CircleAvatar(
                                      backgroundColor: yellow, radius: 15),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 80,
                        top: 87,
                        child: SizedBox(
                          width: 86,
                          height: 33,
                          child: TextFormField(
                            style: h24w500Black,
                            controller: controller,
                            maxLength: 2,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              label: Text(''),
                              counterText: "",
                              hintMaxLines: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 76,
                        child: Container(
                          width: 47,
                          height: 37,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 47,
                                  height: 37,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, -1.00),
                                      end: Alignment(0, 1),
                                      colors: [
                                        Color(0xFF04B3EC),
                                        Color(0xFF009BE2)
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x9E000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 8,
                                top: 3,
                                child: InkWell(
                                  onTap: () =>
                                      widget.setBet(int.parse(controller.text)),
                                  child: Container(
                                      width: 31,
                                      height: 31,
                                      padding: const EdgeInsets.only(
                                        top: 7.27,
                                        left: 5.81,
                                        right: 3.87,
                                        bottom: 7.27,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Icon(
                                        Icons.check,
                                        color: grey,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 1,
                top: 0,
                child: Container(
                  width: 287,
                  height: 170,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 287,
                          height: 170,
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
                        left: 15,
                        top: 7.83,
                        child: SizedBox(
                          width: 256,
                          height: 153.55,
                          child: Text(
                            widget.question,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
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
            ],
          ),
        ),
      ],
    );
  }
}
