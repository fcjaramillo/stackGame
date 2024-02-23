part of 'models.dart';

class CardModel {
  final int id;
  final String name;
  final String description;
  final TypeCard type;
  final int prize;
  final int quantity;
  final int? health;
  final int? food;
  final double? oxygen;
  final double? carbonFootprint;
  final int? energy;
  final double? handicap;

  const CardModel({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.prize,
    required this.quantity,
    this.health,
    this.food,
    this.oxygen,
    this.carbonFootprint,
    this.energy,
    this.handicap,
  });

  int newHealth(int health) => health + (this.health ?? 0);
  int newFood(int food) => food + (this.food ?? 0);
  double newOxygen(double oxygen) => oxygen + (this.oxygen ?? 0);
  double newCarbonFootprint(double carbonFootprint) =>
      carbonFootprint + (this.carbonFootprint ?? 0);
  int newEnergy(int energy) => energy + (this.energy ?? 0);
  double newHandicap(double handicap) => handicap + (this.handicap ?? 0);
}
