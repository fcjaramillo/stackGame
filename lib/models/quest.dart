part of 'models.dart';

class QuestModel extends Objetive {
  const QuestModel({
    required super.id,
    required super.name,
    required super.description,
    required super.isComplete,
  });

  QuestModel copyWith({
    bool? isComplete,
  }) =>
      QuestModel(
        id: id,
        name: name,
        description: description,
        isComplete: isComplete ?? this.isComplete,
      );
}
