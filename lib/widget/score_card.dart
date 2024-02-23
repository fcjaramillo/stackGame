import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({
    super.key,
    required this.score,
    required this.coin,
    required this.health,
    required this.food,
    required this.oxygen,
    required this.carbonFootprint,
    required this.energy,
    required this.handicap,
  });

  final ValueNotifier<int> score;
  final ValueNotifier<int> coin;
  final ValueNotifier<int> health;
  final ValueNotifier<int> food;
  final ValueNotifier<double> oxygen;
  final ValueNotifier<double> carbonFootprint;
  final ValueNotifier<int> energy;
  final ValueNotifier<double> handicap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TitleListenable<int>(
          title: 'score',
          value: score,
        ),
        TitleListenable<int>(
          title: 'coin',
          value: coin,
        ),
        TitleListenable<int>(
          title: 'health',
          value: health,
        ),
        TitleListenable<int>(
          title: 'food',
          value: food,
        ),
        TitleListenable<double>(
          title: 'oxygen',
          value: oxygen,
        ),
        TitleListenable<double>(
          title: 'carbonFootprint',
          value: carbonFootprint,
        ),
        TitleListenable<int>(
          title: 'energy',
          value: energy,
        ),
        TitleListenable<double>(
          title: 'handicap',
          value: handicap,
        ),
      ],
    );
  }
}

class TitleListenable<T> extends StatelessWidget {
  const TitleListenable({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final ValueNotifier<T> value;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<T>(
      valueListenable: value,
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 6, 12, 18),
          child: Text(
            '$title: $value'.toUpperCase(),
            style: Theme.of(context).textTheme.titleSmall!,
          ),
        );
      },
    );
  }
}
