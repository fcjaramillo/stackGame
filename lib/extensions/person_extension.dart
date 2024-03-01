part of 'extensions.dart';

extension PersonExtension on CardComponent {
  bool get isPerson => card.id == 0;

  Future<bool?> eatFood() async {
    if (isPerson) {
      List<CardComponent> foodCards = game.world.children
          .query<CardComponent>()
          .where(
            (CardComponent c) => c.isFood,
          )
          .toList();
      if (foodCards.fold<int>(
              0, (int p, CardComponent c) => p + (c.card.food ?? 0)) >=
          kNeededFood) {
        int neededFood = kNeededFood;
        while (neededFood > 0) {
          final CardComponent food = foodCards.removeAt(0);
          neededFood -= food.card.food ?? 0;
          await food.animateTo(position);
        }
        return true;
      }
      return false;
    }
    return null;
  }
}
