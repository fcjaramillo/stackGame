part of 'components.dart';

class LinearTime extends RectangleComponent with HasGameReference<StackGame> {
  LinearTime({
    required super.size,
    required super.position,
    required this.totalTime,
    required this.random,
  }) : super(
          paint: Paint()..color = const Color.fromARGB(255, 23, 23, 23),
        );

  final Random random;
  final double totalTime;
  double currentTime = 0.0;

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(size.x + 10, size.y + 10);
    if (this is GameTime) {
      priority = 100;
    }
  }

  @override
  Future<void> update(double dt) async {
    super.update(dt);
    if (!(game.isPause) && game.playState != PlayState.gameOver) {
      if (!(game.isFast)) {
        currentTime += dt;
      } else {
        currentTime += (dt * 4);
      }
      if (currentTime >= totalTime) {
        currentTime = 0;
        if (this is GameTime) {
          game.canInteract.value = false;
          game.isPause = true;
          game.dayGame++;
          game.addPack(game.world.children.query<PackComponent>().length);

          List<CardComponent> cards =
              game.world.children.query<CardComponent>();

          List<CardComponent> cows = [];
          List<CardComponent> hens = [];
          bool isDeath = false;

          for (final CardComponent card in cards) {
            isDeath = await card.finishDay();
            if (isDeath) {
              break;
            }
            if (card.card.id == kHen.id) {
              hens.add(card);
            } else if (card.card.id == kCow.id) {
              cows.add(card);
            }
          }

          if (game.health.value <= 0 ||
              game.carbonFootprint.value >= 100 ||
              game.oxygen.value <= 0 ||
              isDeath) {
            game.changeValueAchivements(9);
            game.playState = PlayState.gameOver;
          } else {
            cards = game.world.children.query<CardComponent>();

            if (game.card.value > game.cardMax.value) {
              game.playState = PlayState.selling;
              for (CardComponent c in cards) {
                c.changeAnimation(AnimationType.shake);
                c.activeAnimation = true;
              }
              await Future.doWhile(() async {
                await Future.delayed(
                  const Duration(
                    seconds: 1,
                  ),
                );
                return game.card.value > game.cardMax.value;
              });

              cards = game.world.children.query<CardComponent>();
              for (CardComponent c in cards) {
                c.changeAnimation(AnimationType.none);
                c.activeAnimation = false;
                c.angle = 0;
              }
              game.playState = PlayState.playing;
            }

            if (hens.isNotEmpty) {
              hens.map(
                (e) => game.world.add(
                  CardComponent(
                    card: kEgg,
                    position: Vector2(
                      e.position.x,
                      e.position.y,
                    ),
                    activeAnimation: true,
                    animationDelta: Vector2(
                      (random.nextDouble() - 0.5) * 200,
                      (random.nextDouble() - 0.5) * 200,
                    ),
                  ),
                ),
              );
            }

            if (cows.isNotEmpty) {
              cows.map(
                (e) => game.world.add(
                  CardComponent(
                    card: kPoop,
                    position: Vector2(
                      e.position.x,
                      e.position.y,
                    ),
                    activeAnimation: true,
                    animationDelta: Vector2(
                      (random.nextDouble() - 0.5) * 200,
                      (random.nextDouble() - 0.5) * 200,
                    ),
                  ),
                ),
              );
            }

            game.changeValueQuest(4);
            game.changeValueAchivements(1);

            game.isPause = false;
            game.canInteract.value = true;
          }
        } else if (this is StackTime) {
          finishTime(stackTime: this as StackTime);
        }
      }
      if (this is GameTime) {
        game.timeDayNotifier.value = currentTime;
      }
    }
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    Rect rect = Rect.fromPoints(const Offset(5, 5),
        Offset(5 + (currentTime / totalTime) * (size.x - 10), 30));
    Paint paint = Paint()..color = Colors.blue;
    canvas.drawRect(rect, paint);
  }

  void finishTime({
    required StackTime stackTime,
  }) {
    for (int i = 0; i < stackTime.removeCard.length; i++) {
      int indexCard = stackTime.stack.cards.indexWhere(
          (CardComponent c) => c.card.id == stackTime.removeCard[i].id);
      game.world.remove(stackTime.stack.cards[indexCard]);
      stackTime.stack.removeCard(stackTime.stack.cards[indexCard]);
    }

    for (int i = 0; i < stackTime.createCard.length; i++) {
      if (stackTime.createCard[i].id == kSallary.id) {
        game.changeValueQuest(0);
      } else if (stackTime.createCard[i].id == kFastFood.id) {
        game.changeValueQuest(3);
      } else if (stackTime.createCard[i].id == kCraftingTable.id) {
        game.changeValueQuest(5);
      } else if (stackTime.createCard[i].id == kFarmFeast.id) {
        game.changeValueQuest(8);
        game.changeValueAchivements(7);
      } else if (stackTime.createCard[i].id == kSolarPanel.id) {
        game.changeValueQuest(9);
        game.changeValueAchivements(6);
      } else if (stackTime.createCard[i].id == kPoop.id) {
        game.changeValueAchivements(3);
      } else if (stackTime.createCard[i].id == kDog.id) {
        game.changeValueAchivements(4);
      } else if (stackTime.createCard[i].id == kFabian.id ||
          stackTime.createCard[i].id == kYonnier.id ||
          stackTime.createCard[i].id == kBrian.id ||
          stackTime.createCard[i].id == kSantiago.id) {
        game.changeValueAchivements(5);
      }
      game.changeValueAchivements(0);
      game.world.add(
        CardComponent(
          card: stackTime.createCard[i],
          position: Vector2(
            position.x + (i * 50),
            position.y + (i * 50),
          ),
          activeAnimation: true,
          animationDelta: Vector2(
            (random.nextDouble() - 0.5) * 200,
            (random.nextDouble() - 0.5) * 200,
          ),
        ),
      );
    }

    int indexStack = game.stacks.indexWhere((s) => s.linearComponent == this);
    if (indexStack != -1) {
      game.stacks[indexStack].deleteLinear();
    }

    game.world.remove(this);
  }
}

class GameTime extends LinearTime {
  GameTime({
    required super.size,
    required super.position,
    required super.totalTime,
    required super.random,
  });
}

class StackTime extends LinearTime {
  final StackComponent stack;
  final List<CardModel> removeCard;
  final List<CardModel> createCard;

  StackTime({
    required super.size,
    required super.position,
    required super.totalTime,
    required super.random,
    required this.stack,
    required this.removeCard,
    required this.createCard,
  });
}
