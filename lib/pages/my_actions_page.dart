import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/my_actions/my_actions_container.dart';

class MyActtionsPage extends StatefulWidget {
  MyActtionsPage();

  @override
  State<MyActtionsPage> createState() => _MyActtionsPageState();
}

class _MyActtionsPageState extends State<MyActtionsPage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
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
            Text('My Actions', style: h32w500White),
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
        child: Center(
          child: Column(
            children: [
              Container(
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () => setState(() {
                        index = 1;
                      }),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'General',
                            style: h18w500white.copyWith(color: Colors.black),
                          ),
                          Container(
                            height: 4,
                            width: 50,
                            color: index == 1 ? blue : null,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => setState(() {
                        index = 2;
                      }),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Facts',
                              style:
                                  h18w500white.copyWith(color: Colors.black)),
                          Container(
                            height: 4,
                            width: 50,
                            color: index == 2 ? blue : null,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => setState(() {
                        index = 3;
                      }),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('   Data\ncollation',
                              style: h18w500white.copyWith(
                                  color: Colors.black, fontSize: 14)),
                          Container(
                            height: 4,
                            width: 50,
                            color: index == 3 ? blue : null,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => setState(() {
                        index = 4;
                      }),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Comparison',
                              style:
                                  h18w500white.copyWith(color: Colors.black)),
                          Container(
                            height: 4,
                            width: 50,
                            color: index == 4 ? blue : null,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              MyActionsContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
