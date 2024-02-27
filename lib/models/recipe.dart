part of 'models.dart';

class RecipeModel {
  final int id;
  final List<CardModel> cards;
  final double time;
  final List<CardModel>? remove;
  final List<CardModel>? create;

  const RecipeModel({
    required this.id,
    required this.cards,
    required this.time,
    this.remove,
    this.create,
  });
}
