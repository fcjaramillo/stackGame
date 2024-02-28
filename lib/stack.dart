import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:stack/const.dart';

import 'components/components.dart';
import 'data/data.dart';

enum PlayState { welcome, playing, gameOver, won }

class StackGame extends FlameGame with HasCollisionDetection, ScrollDetector {
  final ValueNotifier<int> score = ValueNotifier(0);
  final ValueNotifier<int> coin = ValueNotifier(10);
  final ValueNotifier<int> health = ValueNotifier(0);
  final ValueNotifier<int> food = ValueNotifier(0);
  final ValueNotifier<double> oxygen = ValueNotifier(0);
  final ValueNotifier<double> carbonFootprint = ValueNotifier(0);
  final ValueNotifier<int> energy = ValueNotifier(0);
  final ValueNotifier<double> handicap = ValueNotifier(0);

  List<StackComponent> stacks = [];
  PlayAreaComponent playArea = PlayAreaComponent();
  GameTime gameTime = GameTime(
    size: Vector2.zero(),
    position: Vector2.zero(),
    totalTime: 0,
  );

  StackGame();

  double get width => size.x;
  double get height => size.y;

  @override
  void onGameResize(Vector2 size) {
    Future.delayed(
      const Duration(microseconds: 0),
      () {
        gameTime.position = Vector2(width - barTimerWidth - 20, 10);
        playArea.size = size;
      },
    );
    super.onGameResize(size);
  }

  @override
  FutureOr<void> onLoad() async {
    add(CameraComponent.withFixedResolution(
      width: width,
      height: height,
    ));

    playArea = PlayAreaComponent();
    gameTime = GameTime(
      size: Vector2(barTimerWidth, 25),
      position: Vector2(width - barTimerWidth - 20, 10),
      totalTime: timeDay,
    );

    add(playArea);
    add(gameTime);

    await images.loadAllImages();

    camera.viewfinder.anchor = Anchor.topLeft;

    world.onGameResize(Vector2(width, height));

    world.add(SellComponent(position: Vector2(10, 10)));

    for (int i = 0; i < packs.length; i++) {
      world.add(
        PackComponent(
          pack: packs[i],
          position: Vector2(cardWidth * 2 * (i + 1) + 30, 10),
        ),
      );
    }

    for (int i = 1; i <= 3; i++) {
      for (int j = 1; j <= 3; j++) {
        world.add(
          CardComponent(
            card: cards[(i * j * 2) - 1],
            position:
                Vector2((cardWidth + 10) * i, ((cardHeight + 10) * j) + 15),
          ),
        );
      }
    }

    return super.onLoad();
  }

  @override
  void onScroll(PointerScrollInfo info) {
    const zoomPerScrollUnit = 0.2;
    camera.viewfinder.zoom +=
        info.scrollDelta.global.y.sign * zoomPerScrollUnit;
    camera.viewfinder.zoom = camera.viewfinder.zoom.clamp(0.5, 1.5);
    super.onScroll(info);
  }
}
