part of 'components.dart';

class StackComponent {
  final List<CardComponent> cards;
  final FlameGame game;

  StackTime? linearComponent;

  StackComponent({
    required this.cards,
    required this.game,
  });

  void addCard(CardComponent card) {
    card.moveCard(Vector2(
      cards.last.position.x,
      cards.last.position.y + (kCardHeight * 0.15),
    ));
    cards.add(card);
    searchRecipe();
  }

  void searchRecipe() {
    RecipeModel? recipe = findRecipe();
    if (linearComponent != null) {
      game.world.remove(linearComponent!);
    }
    if (recipe != null && recipe.time != -1) {
      linearComponent = StackTime(
        size: Vector2(kCardWidth - 10, kBarTimerHeight),
        position: Vector2(
          cards.first.position.x,
          cards.first.position.y - kBarTimerHeight - 10,
        ),
        totalTime: recipe.time,
        stack: this,
        createCard: recipe.create ?? [],
        removeCard: recipe.remove ?? [],
      );
      game.world.add(linearComponent!);
    } else {
      linearComponent = null;
    }
  }

  RecipeModel? findRecipe() {
    for (int i = 0; i < recipes.length; i++) {
      List<int> stackA = recipes[i].cards.map((CardModel c) => c.id).toList()
        ..sort();
      List<int> stackB = cards.map((CardComponent c) => c.card.id).toList()
        ..sort();

      if (listEquals(stackA, stackB)) {
        return recipes[i];
      }
    }
    return null;
  }

  List<CardComponent> separateStack(CardComponent card) {
    int index = cards.indexOf(card);
    List firstList = cards.sublist(index);
    cards.removeRange(index, cards.length);
    searchRecipe();
    return firstList as List<CardComponent>;
  }

  void removeCard(CardComponent card) {
    cards.remove(card);
  }

  void reorder() {
    for (int i = 1; i < cards.length; i++) {
      cards[i].moveCard(Vector2(
        cards[i].position.x,
        cards[i].position.y + (kCardHeight * 0.15),
      ));
    }
  }
}
