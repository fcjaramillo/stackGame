part of 'models.dart';

class RecipeModel {
  final int id;
  final List<CardModel> cards;
  final double time;
  final List<CardModel>? remove;
  final List<CardModel>? create;

  List<String> get materials {
    List<String> result = [];

    if (cards.isEmpty) {
      return result;
    }

    int count = 1;
    for (int i = 1; i < cards.length; i++) {
      if (cards[i].id == cards[i - 1].id) {
        count++;
      } else {
        result.add('$count ${cards[i - 1].name}');
        count = 1;
      }
    }

    result.add('$count ${cards.last.name}');

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
