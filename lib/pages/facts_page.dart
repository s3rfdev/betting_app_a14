import 'dart:math';

import 'package:betting1/pages/results_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../api/api.dart';
import '../models/players.dart';
import '../res/styles.dart';
import '../widgets/questions/q_body.dart';
import '../widgets/questions/q_header.dart';
import '../widgets/questions/q_result.dart';

class FactsPage extends StatefulWidget {
  FactsPage();

  @override
  State<FactsPage> createState() => _FactsPageState();
}

class _FactsPageState extends State<FactsPage> {
  @override
  void initState() {
    super.initState();
    () async {
      var tmp = await SofaApi.getPlayers();
      setState(() {
        players = tmp;
        rnd = Random().nextInt(players!.playersMap.values.length);
      });
    }();
    super.initState();
  }

  Players? players;
  int rnd = 1;
  int index = 1;
  int bet = 10;
  int sum = 0;
  int click = 0;
  bool? res;
  @override
  Widget build(BuildContext context) {
    if (index > 3) {
      Future.delayed(Duration.zero, () {
        Get.offAll(ResultsPage(won: sum, mistakes: 1));
      });
    }
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: blue,
        centerTitle: true,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Image.asset('images/back.png'),
        ),
        title: Column(
          children: [
            Text('Facts', style: h32w500White),
            Image.asset(
              'images/logo.png',
              scale: 2,
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: players != null
              ? Column(
                  children: [
                    QHeader(pos: index, money: bet),
                    if (index == 1)
                      QBody(
                          setBet: (val) => setState(() {
                                bet = val;
                              }),
                          bet: 15,
                          question:
                              '${players!.playersMap.values.toList()[rnd].name}\nwas born\n${DateFormat('dd MMM, yyyy').format(DateTime.fromMillisecondsSinceEpoch(int.parse(players!.playersMap.values.toList()[rnd].Age) * 1000))}'),
                    if (index == 2)
                      QBody(
                        setBet: (val) => setState(() {
                          bet = val;
                        }),
                        bet: 15,
                        question:
                            '${players!.playersMap.values.toList()[rnd].name}\nfrom ${players!.playersMap.values.toList()[rnd].country}',
                      ),
                    if (index == 3)
                      QBody(
                        setBet: (val) => setState(() {
                          bet = val;
                        }),
                        bet: 15,
                        question:
                            '${players!.playersMap.values.toList()[rnd].name}\nplayed for \n${players!.playersMap.values.toList()[rnd].teamName}',
                      ),
                    // if (index == 3)
                    //   QBody(question: 'Marcos Rojo\nwas born\nFeb 25, 1999'),
                    SizedBox(height: 30),
                    InkWell(
                      onTap: () => res == null
                          ? setState(() {
                              Future.delayed(Duration(seconds: 2), () {
                                setState(() {
                                  res = null;
                                  click = 0;
                                  index = index + 1;
                                  sum = sum + bet;
                                });
                              });
                              res = Random().nextBool();
                              click = 1;
                              print('$click - $res');
                            })
                          : {},
                      child: QResult(
                          result: 'True',
                          color: res == null || click != 1
                              ? blue
                              : res == true
                                  ? green
                                  : red),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () => res == null
                          ? setState(() {
                              Future.delayed(Duration(seconds: 2), () {
                                setState(() {
                                  res = null;
                                  click = 0;
                                  index = index + 1;
                                  sum = sum + bet;
                                });
                              });
                              res = Random().nextBool();
                              click = 2;
                            })
                          : {},
                      child: QResult(
                          result: 'False',
                          color: res == null || click != 2
                              ? blue
                              : res == false && click == 2
                                  ? green
                                  : red),
                    ),
                    SizedBox(height: 20),
                  ],
                )
              : SizedBox(),
        ),
      ),
    );
  }
}
