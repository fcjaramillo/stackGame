part of 'models.dart';

class RecipeModel {
  final int id;
  final List<CardModel> cards;
  final double time;
  final List<CardModel>? remove;
  final List<CardModel>? create;

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
            title: '${cards[i - 1].name} x $count',
          ),
        );
        count = 1;
      }
    }

    result.add(
      CardCountModel(
        card: cards.last,
        title: '${cards.last.name} x $count',
      ),
    );

    return result;
  }

  const RecipeModel({
    required this.id,
    required this.cards,
    required this.time,
    this.remove,
    this.create,
  });
}

class CardCountModel {
  final CardModel card;
  final String title;

  const CardCountModel({
    required this.card,
    required this.title,
  });
}
