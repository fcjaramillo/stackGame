part of 'components.dart';

class LinearTime extends RectangleComponent with HasGameReference<StackGame> {
  LinearTime({
    required super.size,
    required super.position,
    required this.totalTime,
  }) : super(
          paint: Paint()..color = const Color.fromARGB(255, 23, 23, 23),
        );

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
    if (!(game.isPause)) {
      if (!(game.isFast)) {
        currentTime += dt;
      } else {
        currentTime += (dt * 2);
      }
      if (currentTime >= totalTime) {
        currentTime = 0;
        if (this is GameTime) {
          game.canInteract.value = false;
          game.isPause = true;

          List<CardComponent> cards =
              game.world.children.query<CardComponent>();

          for (final CardComponent card in cards) {
            await card.finishDay();
          }

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

          game.isPause = false;
          game.canInteract.value = true;
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
      game.world.add(
        CardComponent(
          card: stackTime.createCard[i],
          position: Vector2(
            (position.x + 100) * (i + 1),
            (position.y + 100) * (i + 1),
          ),
          activeAnimation: true,
        ),
      );
    }
    game.world.remove(this);
  }
}

class GameTime extends LinearTime {
  GameTime({
    required super.size,
    required super.position,
    required super.totalTime,
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
    required this.stack,
    required this.removeCard,
    required this.createCard,
  });
}
