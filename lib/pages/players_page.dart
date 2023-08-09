import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../api/api.dart';
import '../models/players.dart';
import '../res/styles.dart';
import '../widgets/players/player_container.dart';
import 'player_page.dart';

class PlayersPage extends StatefulWidget {
  const PlayersPage({super.key});

  @override
  State<PlayersPage> createState() => _PlayersPageState();
}

class _PlayersPageState extends State<PlayersPage> {
  Players? players;

  @override
  void initState() {
    super.initState();
    () async {
      var tmp = await SofaApi.getPlayers();
      setState(() {
        players = tmp;
      });
    }();
  }

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
            Text('Players', style: h32w500White),
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
          child: players != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...players!.playersMap.values.map(
                      (e) => InkWell(
                        onTap: () => Get.to(() => PlayerPage(
                              player: e,
                            )),
                        child: PlayerContainer(
                          player: e,
                        ),
                      ),
                    )
                  ],
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
