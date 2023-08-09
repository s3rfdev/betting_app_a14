import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/instruction_page.dart';

class InstructionPage extends StatelessWidget {
  InstructionPage();

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
            Text('Instruction', style: h32w500White),
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
          child: InstructionContainer(),
        ),
      ),
    );
  }
}
