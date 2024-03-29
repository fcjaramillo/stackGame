part of 'extensions.dart';

extension PersonExtension on CardComponent {
  bool get isPerson => card.id == 0;

  Future<bool> eatFood() async {
    if (isPerson) {
      List<CardComponent> foodCards = game.world.children
          .query<CardComponent>()
          .where(
            (CardComponent c) => c.isFood,
          )
          .toList();
      foodCards.removeWhere((e) => cardInRecipe(e));
      if (foodCards.fold<int>(
              0, (int p, CardComponent c) => p + (c.card.food ?? 0)) >=
          kNeededFood) {
        int neededFood = kNeededFood;
        while (neededFood > 0) {
          final CardComponent food = foodCards.removeLast();
          neededFood -= food.card.food ?? 0;
          await food.animateTo(position);
        }
        return false;
      }
      return true;
    }
    return true;
  }
}
