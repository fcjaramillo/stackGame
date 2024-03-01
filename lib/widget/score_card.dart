import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const.dart';

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
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kColorBackground,
        border: Border.all(
          color: kColorBluePrincipal,
          width: 5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 12,
          ),
          TitleListenable<int>(
            icon: const FaIcon(FontAwesomeIcons.coins),
            title: 'Coin',
            value: coin,
          ),
          TitleListenable<int>(
            icon: const FaIcon(FontAwesomeIcons.solidHeart),
            title: 'Health',
            value: health,
          ),
          TitleListenable<int>(
            icon: const FaIcon(FontAwesomeIcons.appleWhole),
            title: 'Food',
            value: food,
            maxValue: 50,
          ),
          TitleListenable<int>(
            icon: const FaIcon(FontAwesomeIcons.coins),
            title: 'Cards',
            value: coin,
          ),
          TitleListenable<double>(
            icon: const FaIcon(FontAwesomeIcons.wind),
            title: 'Oxygen',
            value: oxygen,
          ),
          TitleListenable<double>(
            icon: const FaIcon(FontAwesomeIcons.radiation),
            title: 'Carbon Footprint',
            value: carbonFootprint,
          ),
          TitleListenable<int>(
            icon: const FaIcon(FontAwesomeIcons.bolt),
            title: 'Energy',
            value: energy,
            maxValue: 20,
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}

class TitleListenable<T> extends StatelessWidget {
  const TitleListenable({
    required this.icon,
    required this.title,
    required this.value,
    this.maxValue,
    super.key,
  });

  final Widget icon;
  final String title;
  final ValueNotifier<T> value;
  final T? maxValue;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<T>(
      valueListenable: value,
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Tooltip(
            message: '$title max ${maxValue ?? kMaxValue}',
            child: Row(
              children: [
                icon,
                const SizedBox(width: 4),
                Text(
                  maxValue != null ? '$value/$maxValue' : '$value',
                  style: Theme.of(context).textTheme.titleSmall!,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
