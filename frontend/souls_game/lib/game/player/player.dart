import 'package:flame/components.dart';
// --- CORRECCIÓN AQUÍ ---
import '../utils/constants.dart'; // Antes: 'package:frontend_souls_game/game/utils/constants.dart'

class Player extends SpriteComponent with HasGameReference {
  
  @override
  Future<void> onLoad() async {
    final spriteImage = await game.images.load('images/player.png');
    sprite = Sprite(spriteImage);
    size = tileVectorSize;
    position = Vector2(tileSize * 5, tileSize * 5);
  }
}