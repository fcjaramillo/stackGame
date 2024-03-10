import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const.dart';
import '../l10n/generated/l10n.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({
    super.key,
    required this.score,
    required this.coin,
    required this.cards,
    required this.cardsMax,
    required this.health,
    required this.food,
    required this.oxygen,
    required this.carbonFootprint,
    required this.energy,
    required this.energyMax,
    required this.handicap,
  });

  final ValueNotifier<int> score;
  final ValueNotifier<int> coin;
  final ValueNotifier<int> cards;
  final ValueNotifier<int> cardsMax;
  final ValueNotifier<int> health;
  final ValueNotifier<int> food;
  final ValueNotifier<double> oxygen;
  final ValueNotifier<double> carbonFootprint;
  final ValueNotifier<int> energy;
  final ValueNotifier<int> energyMax;
  final ValueNotifier<double> handicap;

  @override
  Widget build(BuildContext context) {
    double sizeIcon = MediaQuery.of(context).size.height < 600 ? 14 : 24;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      child: DecoratedBox(
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
              icon: FaIcon(
                FontAwesomeIcons.coins,
                size: sizeIcon,
              ),
              title: L10n.of(context).coin,
              value: coin,
            ),
            TitleListenable<int>(
              icon: FaIcon(
                FontAwesomeIcons.solidHeart,
                size: sizeIcon,
              ),
              title: L10n.of(context).health,
              value: health,
            ),
            TitleListenable<int>(
              icon: FaIcon(
                FontAwesomeIcons.appleWhole,
                size: sizeIcon,
              ),
              title: L10n.of(context).food,
              value: food,
              otherValue: 3,
            ),
            TitleValueListenable<int>(
              icon: FaIcon(
                FontAwesomeIcons.diamond,
                size: sizeIcon,
              ),
              title: L10n.of(context).cards,
              value: cards,
              otherValue: cardsMax,
            ),
            TitleListenable<double>(
              icon: FaIcon(
                FontAwesomeIcons.wind,
                size: sizeIcon,
              ),
              title: L10n.of(context).oxygen,
              value: oxygen,
            ),
            TitleListenable<double>(
              icon: FaIcon(
                FontAwesomeIcons.radiation,
                size: sizeIcon,
              ),
              title: L10n.of(context).carbonFootprint,
              value: carbonFootprint,
            ),
            TitleValueListenable<int>(
              icon: FaIcon(
                FontAwesomeIcons.bolt,
                size: sizeIcon,
              ),
              title: L10n.of(context).energy,
              value: energy,
              otherValue: energyMax,
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
      ),
    );
  }
}

class TitleListenable<T> extends StatelessWidget {
  const TitleListenable({
    required this.icon,
    required this.title,
    required this.value,
    this.otherValue,
    this.condition,
    super.key,
  });

  final Widget icon;
  final String title;
  final ValueNotifier<T> value;
  final T? otherValue;
  final Padding? condition;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<T>(
      valueListenable: value,
      builder: (context, value, child) {
        return Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
            child: Tooltip(
              message:
                  '$title max ${(otherValue is double ? (otherValue as double).toStringAsFixed(2) : otherValue) ?? kMaxValue}',
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: icon),
                  const SizedBox(width: 4),
                  Expanded(
                    flex: 2,
                    child: AutoSizeText(
                      otherValue != null
                          ? '$value/$otherValue'
                          : '${value is double ? value.toStringAsFixed(0) : value}',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: ((value as num?) ?? 0) <
                                    ((otherValue as num?) ?? 0)
                                ? Colors.red
                                : null,
                          ),
                      minFontSize: 6,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TitleValueListenable<T> extends StatelessWidget {
  const TitleValueListenable({
    required this.icon,
    required this.title,
    required this.value,
    required this.otherValue,
    super.key,
  });

  final Widget icon;
  final String title;
  final ValueNotifier<T> value;
  final ValueNotifier<T> otherValue;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<T>(
      valueListenable: value,
      builder: (context, value, child) {
        return ValueListenableBuilder<T>(
          valueListenable: otherValue,
          builder: (context, otherValue, child) {
            return Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                child: Tooltip(
                  message: '$title max ${otherValue ?? kMaxValue}',
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon,
                      const SizedBox(width: 4),
                      Expanded(
                        flex: 2,
                        child: AutoSizeText(
                          otherValue != null
                              ? '$value/$otherValue'
                              : '${value is double ? value.toStringAsFixed(2) : value}',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: ((value as num?) ?? 0) >
                                            ((otherValue as num?) ?? 0)
                                        ? Colors.red
                                        : null,
                                  ),
                          minFontSize: 6,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
