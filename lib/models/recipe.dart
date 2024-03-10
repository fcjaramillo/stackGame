part of 'models.dart';

class RecipeModel {
  final int id;
  final List<CardModel> cards;
  final double time;
  final List<CardModel>? remove;
  final List<CardModel>? create;
  final CardModel? cardCreate;
  final CardModel? idea;
  final bool isVisible;

  List<CardCountModel> get materials {
    List<CardCountModel> result = [];

    if (cards.isEmpty) {
      return result;
    }

    int count = 1;
    for (int i = 1; i < cards.length; i++) {
      if (cards[i].id == cards[i - 1].id) {
        count++;
      } else {
        result.add(
          CardCountModel(
            card: cards[i - 1],
            count: count,
          ),
        );
        count = 1;
      }
    }

    result.add(
      CardCountModel(
        card: cards.last,
        count: count,
      ),
    );

    return result;
  }

  const RecipeModel({
    required this.id,
    required this.cards,
    required this.time,
    this.cardCreate,
    this.remove,
    this.create,
    this.idea,
    this.isVisible = false,
  });

  RecipeModel copyWith(
    bool? isVisible,
  ) =>
      RecipeModel(
        id: id,
        cards: cards,
        time: time,
        cardCreate: cardCreate,
        remove: remove,
        create: create,
        isVisible: isVisible ?? this.isVisible,
      );
}

class CardCountModel {
  final CardModel card;
  final int count;

  const CardCountModel({
    required this.card,
    required this.count,
  });
}
