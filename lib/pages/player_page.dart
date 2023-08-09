import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/players.dart';
import '../res/styles.dart';
import '../widgets/players/player_info_container.dart';

class PlayerPage extends StatelessWidget {
  PlayerPage({required this.player});
  Player player;
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
            Text('Player info', style: h32w500White),
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
          child: PlayerInfoContainer(player: player),
        ),
      ),
    );
  }
}
