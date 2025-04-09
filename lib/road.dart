import 'package:flame/components.dart';
import 'package:flame/game.dart';

class Road extends SpriteComponent with HasGameRef<FlameGame> {
  Road() : super(size: Vector2(5000, 60));

  @override
  Future<void> onLoad() async {
    sprite = await gameRef.loadSprite('mountains.png');
    position = Vector2(0, gameRef.size.y - 60); // bottom of screen
  }
}