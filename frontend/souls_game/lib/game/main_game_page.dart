import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'world/game_map.dart';
import 'player/player.dart';

class MainGamePage extends StatelessWidget {
  const MainGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: SoulsGame(),
      ),
    );
  }
}

class SoulsGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await world.add(GameMap());
    await world.add(Player());
  }
}