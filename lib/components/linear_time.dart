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
  }

  @override
  void update(double dt) {
    super.update(dt);
    currentTime += dt;
    if (currentTime >= totalTime) {
      currentTime = 0;
      if (this is GameTime) {
        game.world.children.query<CardComponent>().forEach((
          CardComponent card,
        ) {
          card.finishDay();
        });
      } else if (this is StackTime) {
        finishDay(stackTime: this as StackTime);
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

  void finishDay({
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
