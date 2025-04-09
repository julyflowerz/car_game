
import 'package:flame/components.dart';

class Car extends SpriteComponent with HasGameRef {
  Car() : super(size: Vector2(100, 60));

  @override
  Future<void> onLoad() async {
    sprite = await gameRef.loadSprite('redcar.png'); // or your sprite asset
    position = Vector2(100, gameRef.size.y - 80); // near bottom left
  }

  @override
  void update(double dt) {
    super.update(dt);
    // Move right like a drag race
    position.x += 100 * dt; // adjust for speed
  }
}
