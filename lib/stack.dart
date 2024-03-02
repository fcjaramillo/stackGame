import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:stack/const.dart';
import 'package:stack/models/models.dart';

import 'components/components.dart';
import 'data/data.dart';

enum PlayState { welcome, playing, gameOver, won }

class StackGame extends FlameGame with HasCollisionDetection, ScrollDetector {
  final ValueNotifier<int> score = ValueNotifier(0);
  final ValueNotifier<int> card = ValueNotifier(0);
  final ValueNotifier<int> cardMax = ValueNotifier(kNumberCardsInitial);
  final ValueNotifier<int> coin = ValueNotifier(10);
  final ValueNotifier<int> health = ValueNotifier(kHealtInitial);
  final ValueNotifier<int> food = ValueNotifier(0);
  final ValueNotifier<double> oxygen = ValueNotifier(kOxygenInitial);
  final ValueNotifier<double> carbonFootprint =
      ValueNotifier(kCarbonFootprintInitial);
  final ValueNotifier<int> energy = ValueNotifier(0);
  final ValueNotifier<int> energyMax = ValueNotifier(0);
  final ValueNotifier<double> handicap = ValueNotifier(0);
  final ValueNotifier<double> timeDayNotifier = ValueNotifier(0);
  final ValueNotifier<GameCardModel?> cardSelected = ValueNotifier(null);

  List<StackComponent> stacks = [];
  PlayAreaComponent playArea = PlayAreaComponent();
  GameTime gameTime = GameTime(
    size: Vector2.zero(),
    position: Vector2.zero(),
    totalTime: 0,
  );
  bool isPause = false;
  bool isFast = false;
  bool isSound = true;

  StackGame();

  double get width => size.x;
  double get height => size.y;

  @override
  void onDispose() {
    FlameAudio.bgm.stop();
    FlameAudio.bgm.dispose();
    super.onDispose();
  }

  @override
  void onGameResize(Vector2 size) {
    Future.delayed(
      const Duration(microseconds: 0),
      () {
        gameTime.position = Vector2(width - kBarTimerWidth - 20, 10);
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

    await images.loadAllImages();
    await FlameAudio.audioCache.loadAll(kSoundList);

    playArea = PlayAreaComponent();
    gameTime = GameTime(
      size: Vector2(kBarTimerWidth, 25),
      position: Vector2(width - kBarTimerWidth - 20, 10),
      totalTime: kTimeDayComplete,
    );

    add(playArea);
    add(gameTime);

    FlameAudio.bgm.initialize();
    playSound();

    camera.viewfinder.anchor = Anchor.topLeft;

    world.onGameResize(Vector2(width, height));

    world.add(SellComponent(position: Vector2(10, 10)));

    for (int i = 0; i < packs.length; i++) {
      world.add(
        PackComponent(
          pack: packs[i],
          position: Vector2(kCardWidth * (i + 1) + ((i + 1) * 40), 10),
        ),
      );
    }

    for (CardModel card in kInitialCards) {
      world.add(
        CardComponent(
            card: card,
            position: Vector2(kCardWidth * (card.id % 4) + 200,
                kCardHeight * (card.id % 2) + kCardHeight),
            activeAnimation: true,
            animationDelta: Vector2(
              (Random().nextDouble() - 0.5) * 200,
              (Random().nextDouble()) * 200,
            )),
      );
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

  void changePause() {
    isPause = !isPause;
  }

  void changeFast() {
    isFast = !isFast;
  }

  void changeSound() {
    isSound = !isSound;
    if (isSound) {
      FlameAudio.bgm.resume();
    } else {
      FlameAudio.bgm.pause();
    }
  }

  void playSound() {
    FlameAudio.bgm.stop();
    int value = Random().nextInt(kSoundList.length);
    FlameAudio.bgm.play(
      kSoundList[value],
    );
  }
}
