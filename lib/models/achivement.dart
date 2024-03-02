part of 'models.dart';

class AchivementModel {
  final int id;
  final String name;
  final String description;
  final bool isComplete;

  const AchivementModel({
    required this.id,
    required this.name,
    required this.description,
    required this.isComplete,
  });
}
