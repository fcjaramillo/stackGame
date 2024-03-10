part of 'models.dart';

class CardProbabilityModel {
  final CardModel card;
  final double percentage;

  CardProbabilityModel({
    required this.card,
    required this.percentage,
  });

  String getString(BuildContext context) =>
      '- ${card.id == 1000 ? L10n.of(context).ideas : card.nameInt(context)} $percentage%\n   ';
}
