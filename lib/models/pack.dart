part of 'models.dart';

class PackModel {
  final int id;
  final String name;
  final String description;
  final List<CardProbabilityModel> cards;
  final int numberCards;
  final int cost;

  PackModel({
    required this.id,
    required this.name,
    required this.description,
    required this.cards,
    required this.cost,
    required this.numberCards,
  });

  List<CardModel> generateCards() {
    List<CardModel> newCards = <CardModel>[];
    for (int i = 0; i < numberCards; i++) {
      int random = Random().nextInt(100) + 1;
      int percentage = 0;

      for (int j = 0; j < cards.length; j++) {
        percentage += cards[j].percentage.toInt();
        if (random <= percentage) {
          newCards.add(cards[j].card);
          break;
        }
      }
    }
    return newCards;
  }
}
