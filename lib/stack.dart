import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/components.dart';
import 'const.dart';
import 'data/data.dart';
import 'enums/enums.dart';
import 'models/models.dart';
import 'utils/utils.dart';

class StackGame extends FlameGame
    with HasCollisionDetection, ScrollDetector, KeyboardEvents {
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
  final ValueNotifier<bool> canInteract = ValueNotifier(true);
  final ValueNotifier<List<RecipeModel>> recipesNotifier =
      ValueNotifier(recipes);
  final ValueNotifier<List<QuestModel>> questNotifier = ValueNotifier(kRoadMap);
  final ValueNotifier<List<AchivementModel>> achivementNotifier =
      ValueNotifier(kAchivementsList);

  final _debouncer = Debouncer(milliseconds: 100);
  final _random = Random();
  Random get random => _random;

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
  int dayGame = 0;

  PlayState _playState = PlayState.welcome;
  PlayState get playState => _playState;
  set playState(PlayState playState) {
    _playState = playState;
    switch (playState) {
      case PlayState.welcome:
      case PlayState.gameOver:
      case PlayState.won:
        overlays.add(playState.name);
      case PlayState.pause:
      case PlayState.onboarding:
        overlays.add(playState.name);
        overlays.remove(PlayState.welcome.name);
      case PlayState.playing:
        overlays.remove(PlayState.welcome.name);
        overlays.remove(PlayState.onboarding.name);
        overlays.remove(PlayState.gameOver.name);
        overlays.remove(PlayState.won.name);
        overlays.remove(PlayState.selling.name);
      case PlayState.selling:
        overlays.add(PlayState.selling.name);
    }
  }

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

    add(playArea);

    FlameAudio.bgm.initialize();
    playSound();

    camera.viewfinder.anchor = Anchor.topLeft;

    world.onGameResize(Vector2(width, height));

    playState = PlayState.welcome;

    return super.onLoad();
  }

  void startGame() {
    if (playState == PlayState.playing) return;

    dayGame = 0;

    world.removeAll(world.children.query<CardComponent>());
    world.removeAll(world.children.query<PackComponent>());
    world.removeAll(world.children.query<LinearTime>());
    removeAll(children.query<LinearTime>());
    playState = PlayState.playing;

    gameTime = GameTime(
      size: Vector2(kBarTimerWidth, 25),
      position: Vector2(width - kBarTimerWidth - 20, 10),
      totalTime: kTimeDayComplete,
    );

    add(gameTime);

    world.add(SellComponent(position: Vector2(10, 40)));

    addPack();

    for (CardModel card in kInitialCards) {
      world.add(
        CardComponent(
            card: card,
            position: Vector2(kCardWidth * (card.id % 4) + 200,
                kCardHeight * (card.id % 2) + kCardHeight),
            activeAnimation: true,
            animationDelta: Vector2(
              (_random.nextDouble() - 0.5) * 200,
              (_random.nextDouble()) * 200,
            )),
      );
    }
  }

  @override
  KeyEventResult onKeyEvent(
      RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    super.onKeyEvent(event, keysPressed);
    switch (event.logicalKey) {
      case LogicalKeyboardKey.space:
        _debouncer.run(() {
          changePause();
        });
      case LogicalKeyboardKey.keyM:
        _debouncer.run(() {
          changeSound();
        });
      case LogicalKeyboardKey.keyF:
        _debouncer.run(() {
          changeFast();
        });
      case LogicalKeyboardKey.enter:
        _debouncer.run(() {
          if (playState == PlayState.onboarding) {
            startGame();
          } else if (playState == PlayState.welcome) {
            playState = PlayState.onboarding;
          } else if (playState == PlayState.gameOver) {
            startGame();
          }
        });
    }
    return KeyEventResult.handled;
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
    int value = _random.nextInt(kSoundList.length);
    FlameAudio.bgm.play(
      kSoundList[value],
    );
  }

  void addPack() {
    for (int i = 0; i < packs.length; i++) {
      if (dayGame == packs[i].day) {
        int p = world.children.query<PackComponent>().length;
        world.add(
          PackComponent(
            pack: packs[i],
            position: Vector2(kCardWidth * (p + 2) + ((p + 2) * 40), 40),
          ),
        );
      }
    }
  }

  void changeValueRecipe(CardModel card) {
    int indexRecipe = recipesNotifier.value
        .indexWhere((r) => card.name.contains(r.create?[0].name ?? 'human'));
    if (!(recipesNotifier.value[indexRecipe].isVisible)) {
      List<RecipeModel> recipesNew = recipesNotifier.value;
      recipesNew[indexRecipe] = recipesNew[indexRecipe].copyWith(true);
      recipesNotifier.value = [...recipesNew];
    }
  }

  void changeValueQuest(int idQuest) {
    int indexQuest = questNotifier.value.indexWhere((q) => q.id == idQuest);
    if (!(questNotifier.value[indexQuest].isComplete)) {
      List<QuestModel> questNew = questNotifier.value;
      questNew[indexQuest] = questNew[indexQuest].copyWith(isComplete: true);
      questNotifier.value = [...questNew];
    }
  }

  void changeValueAchivements(int idAchivements) {
    int indexAchivements =
        achivementNotifier.value.indexWhere((q) => q.id == idAchivements);
    if (!(achivementNotifier.value[indexAchivements].isComplete)) {
      List<AchivementModel> achivementsNew = achivementNotifier.value;
      achivementsNew[indexAchivements] =
          achivementsNew[indexAchivements].copyWith(isComplete: true);

      bool allTrue = true;
      for (int i = 0; i < achivementsNew.length - 1; i++) {
        if (!(achivementsNew[i].isComplete)) {
          allTrue = false;
          break;
        }
      }
      if (allTrue) {
        achivementsNew.last = achivementsNew.last.copyWith(isComplete: true);
      }

      achivementNotifier.value = [...achivementsNew];
    }
  }
}
