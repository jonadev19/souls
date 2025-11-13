import 'package:flame/components.dart';
// --- CORRECCIÓN AQUÍ ---
import '../utils/constants.dart'; // Antes: 'package:frontend_souls_game/game/utils/constants.dart'

class GameMap extends SpriteComponent with HasGameReference {

  @override
  Future<void> onLoad() async {
    final spriteImage = await game.images.load('tiles/floor.png');
    
    sprite = Sprite(spriteImage);
    
    // Aquí usamos 'tileSize' que viene de 'constants.dart'
    size = Vector2.all(tileSize * 20); 
  }
}