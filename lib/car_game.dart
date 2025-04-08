import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flame/input.dart';
import 'package:flame/camera.dart';
import 'package:flutter/material.dart';
import 'dart:ui'; // ✅ For ImageRepeat

import 'car.dart';
import 'road.dart';

class CarGame extends FlameGame with HasCollisionDetection {
  late Car _car;

  @override
  Future<void> onLoad() async {
    final world = World();
    await add(world);

    final background = await ParallaxComponent.load(
      [ParallaxImageData('assets/mountains.png')],
      baseVelocity: Vector2(20, 0),
      repeat: ImageRepeat.repeatX, // ✅ Correct for your Flame version
    );
    await world.add(background);

    await world.add(Road());

    _car = Car();
    await world.add(_car);

    final cameraComponent = CameraComponent.withFixedResolution(
      world: world,
      width: 800,
      height: 400,
    );
    cameraComponent.follow(_car); // ✅ Correct for 1.13.1
    add(cameraComponent);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
