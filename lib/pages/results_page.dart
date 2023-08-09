import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/buttons/button1.dart';
import '../widgets/results/results_container.dart';
import 'home_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    super.key,
    required this.won,
    required this.mistakes,
  });

  int won;
  int mistakes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: blue,
        centerTitle: true,
        leading: null,
        title: Column(
          children: [
            Text('Yor Result', style: h32w500White),
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
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
              children: [
                ResultsContainer(won: won),
                SizedBox(height: 100),
                InkWell(
                  onTap: () => {Get.offAll(HomePage())},
                  child: Container(
                    width: 320,
                    child: Button1(title: 'Menu'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
