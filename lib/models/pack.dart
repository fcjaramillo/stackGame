part of 'models.dart';

class PackModel {
  final int id;
  final String name;
  final String description;
  final String Function(BuildContext) nameInt;
  final String Function(BuildContext) descriptionInt;
  final List<CardProbabilityModel> cards;
  final int numberCards;
  final int cost;
  final List<CardModel> ideas;
  final int day;
  final CardModel? devCard;

  PackModel({
    required this.id,
    required this.name,
    required this.description,
    required this.nameInt,
    required this.descriptionInt,
    required this.cards,
    required this.cost,
    required this.numberCards,
    required this.day,
    this.ideas = const [],
    this.devCard,
  });
}
