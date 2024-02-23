part of 'components.dart';

class StackComponent {
  final List<CardComponent> cards;
  final FlameGame game;

  StackComponent({
    required this.cards,
    required this.game,
  });

  void addCard(CardComponent card) {
    card.moveCard(Vector2(
      cards.last.position.x,
      cards.last.position.y * 1.15,
    ));
    cards.add(card);
    double time = findRecipe();
    if (time != -1) {
      game.world.add(
        LinearTime(
          size: Vector2(cardWidth, barTimerHeight),
          position: Vector2(
            cards.first.position.x,
            cards.first.position.y - barTimerHeight - 10,
          ),
          totalTime: time,
        ),
      );
    }
  }

  double findRecipe() {
    for (int i = 0; i < recipes.length; i++) {
      List<int> stackA = recipes[i].cards.map((CardModel c) => c.id).toList()
        ..sort();
      List<int> stackB = cards.map((CardComponent c) => c.card.id).toList()
        ..sort();

      if (listEquals(stackA, stackB)) {
        return recipes[i].time;
      }
    }
    return -1;
  }
}
