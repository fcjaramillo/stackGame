part of 'models.dart';

class GameCardModel {
  final CardModel card;
  final Color backgroundColor;
  final Color primaryColor;
  final Color foregroundColor;

  const GameCardModel({
    required this.backgroundColor,
    required this.primaryColor,
    required this.foregroundColor,
    required this.card,
  });

  GameCardModel.human({
    required this.card,
  })  : backgroundColor = Colors.lightBlue.shade100,
        primaryColor = Colors.lightBlue.shade200,
        foregroundColor = Colors.black;

  GameCardModel.material({
    required this.card,
  })  : backgroundColor = Colors.blueGrey,
        primaryColor = Colors.blueGrey.shade300,
        foregroundColor = Colors.black87;

  GameCardModel.food({
    required this.card,
  })  : backgroundColor = Colors.red.shade200,
        primaryColor = Colors.red.shade300,
        foregroundColor = Colors.black;

  GameCardModel.structure({
    required this.card,
  })  : backgroundColor = Colors.orange.shade200,
        primaryColor = Colors.orange.shade400,
        foregroundColor = Colors.black;

  GameCardModel.animal({
    required this.card,
  })  : backgroundColor = Colors.grey.shade300,
        primaryColor = Colors.grey.shade400,
        foregroundColor = Colors.black;

  GameCardModel.idea({
    required this.card,
  })  : backgroundColor = Colors.blue.shade800,
        primaryColor = Colors.blue.shade200,
        foregroundColor = Colors.black;

  GameCardModel.plants({
    required this.card,
  })  : backgroundColor = Colors.green.shade300,
        primaryColor = Colors.green.shade700,
        foregroundColor = Colors.black;

  GameCardModel.dev({
    required this.card,
  })  : backgroundColor = Colors.yellow.shade600,
        primaryColor = Colors.yellow.shade400,
        foregroundColor = Colors.yellow.shade900;

  factory GameCardModel.byType(CardModel card) {
    switch (card.type) {
      case TypeCard.dev:
        return GameCardModel.dev(card: card);
      case TypeCard.human:
        return GameCardModel.human(card: card);
      case TypeCard.material:
        return GameCardModel.material(card: card);
      case TypeCard.food:
        return GameCardModel.food(card: card);
      case TypeCard.structure:
        return GameCardModel.structure(card: card);
      case TypeCard.animal:
        return GameCardModel.animal(card: card);
      case TypeCard.plant:
        return GameCardModel.plants(card: card);
      case TypeCard.idea:
        return GameCardModel.idea(card: card);
    }
  }
}
