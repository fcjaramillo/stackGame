part of 'models.dart';

class AchivementModel extends Objetive {
  const AchivementModel({
    required super.id,
    required super.name,
    required super.description,
    required super.isComplete,
  });

  AchivementModel copyWith({
    bool? isComplete,
  }) =>
      AchivementModel(
        id: id,
        name: name,
        description: description,
        isComplete: isComplete ?? this.isComplete,
      );
}
