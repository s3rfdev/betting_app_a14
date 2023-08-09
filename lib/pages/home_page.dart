import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../res/styles.dart';
import 'package:get/route_manager.dart';

import 'compar_page.dart';
import 'data_page.dart';
import 'facts_page.dart';
import 'instruction_page.dart';
import 'my_actions_page.dart';
import 'players_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'images/bg.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 100,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('   FC Player \nComparison', style: h36w500White),
                  SizedBox(height: 20),
                  Image.asset('images/logo.png'),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Get.to(PlayersPage()),
                        child: Image.asset('images/btn-0.png'),
                      ),
                      SizedBox(width: 40),
                      InkWell(
                        onTap: () => Get.to(FactsPage()),
                        child: Image.asset('images/btn-1.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Get.to(InstructionPage()),
                        child: Image.asset('images/btn-2.png'),
                      ),
                      SizedBox(width: 40),
                      InkWell(
                        onTap: () => Get.to(ComparPage()),
                        child: Image.asset('images/btn-3.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Get.to(DataPage()),
                        child: Image.asset('images/btn-4.png'),
                      ),
                      SizedBox(width: 40),
                      InkWell(
                        onTap: () => Get.to(MyActtionsPage()),
                        child: Image.asset('images/btn-5.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
