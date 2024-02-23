part of 'models.dart';

class RecipeModel {
  final int id;
  final List<CardModel> cards;
  final double time;

  const RecipeModel({
    required this.id,
    required this.cards,
    required this.time,
  });
}
