import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:stack/const.dart';

import 'components/components.dart';
import 'data/data.dart';

enum PlayState { welcome, playing, gameOver, won }

class StackGame extends FlameGame with HasCollisionDetection {
  final ValueNotifier<int> score = ValueNotifier(0);
  final ValueNotifier<int> coin = ValueNotifier(10);
  final ValueNotifier<int> health = ValueNotifier(0);
  final ValueNotifier<int> food = ValueNotifier(0);
  final ValueNotifier<double> oxygen = ValueNotifier(0);
  final ValueNotifier<double> carbonFootprint = ValueNotifier(0);
  final ValueNotifier<int> energy = ValueNotifier(0);
  final ValueNotifier<double> handicap = ValueNotifier(0);

  List<StackComponent> stacks = [];

  StackGame();

  double get width => size.x;
  double get height => size.y;

  @override
  FutureOr<void> onLoad() async {
    add(CameraComponent.withFixedResolution(
      width: width,
      height: height,
    ));
    await images.loadAllImages();

    camera.viewfinder.anchor = Anchor.topLeft;

    add(PlayAreaComponent());

    world.onGameResize(Vector2(width, height));

    world.add(
      PackComponent(
        pack: packs[0],
        position: Vector2(10, 10),
      ),
    );

    world.add(LinearTime(
      size: Vector2(barTimerWidth, 25),
      position: Vector2(width - barTimerWidth - 20, 10),
      totalTime: timeDay,
    ));

    for (int i = 1; i <= 3; i++) {
      for (int j = 1; j <= 3; j++) {
        world.add(
          CardComponent(
            card: cards[(i * j * 2) - 1],
            position: Vector2(i * 100 + 200, j * 100),
          ),
        );
      }
    }

    return super.onLoad();
  }
}
