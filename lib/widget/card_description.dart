import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stack/enums/enums.dart';

import '../l10n/generated/l10n.dart';
import '../models/models.dart';

class CardDescription extends StatelessWidget {
  const CardDescription({
    required this.gameCard,
    super.key,
  });

  final GameCardModel gameCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: gameCard.primaryColor,
              border: Border.all(
                color: gameCard.foregroundColor,
                width: 5,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    gameCard.card.name,
                    style: TextStyle(
                      color: gameCard.foregroundColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: gameCard.backgroundColor,
              border: Border(
                bottom: BorderSide(
                  color: gameCard.foregroundColor,
                  width: 5,
                ),
                left: BorderSide(
                  color: gameCard.foregroundColor,
                  width: 5,
                ),
                right: BorderSide(
                  color: gameCard.foregroundColor,
                  width: 5,
                ),
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      gameCard.card.description,
                      textAlign: gameCard.card.type != TypeCard.pack
                          ? TextAlign.center
                          : TextAlign.start,
                      style: TextStyle(
                        color: gameCard.foregroundColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 100,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Visibility(
                      visible: gameCard.card.quantity != 0,
                      child: CardProperties(
                        icon: const FaIcon(FontAwesomeIcons.diamond),
                        title: L10n.of(context).quantity,
                        number: gameCard.card.quantity,
                      ),
                    ),
                    CardProperties(
                      icon: const FaIcon(FontAwesomeIcons.appleWhole),
                      title: L10n.of(context).food,
                      number: gameCard.card.food,
                    ),
                    CardProperties(
                      icon: const FaIcon(FontAwesomeIcons.solidHeart),
                      title: L10n.of(context).health,
                      number: gameCard.card.health,
                    ),
                    CardProperties(
                      icon: const FaIcon(FontAwesomeIcons.wind),
                      title: L10n.of(context).oxygen,
                      number: gameCard.card.oxygen,
                    ),
                    CardProperties(
                      icon: const FaIcon(FontAwesomeIcons.radiation),
                      title: L10n.of(context).carbonFP,
                      number: gameCard.card.carbonFootprint,
                    ),
                    CardProperties(
                      icon: const FaIcon(FontAwesomeIcons.bolt),
                      title: L10n.of(context).energy,
                      number: gameCard.card.energy,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardProperties extends StatelessWidget {
  const CardProperties({
    required this.icon,
    required this.title,
    this.number,
    super.key,
  });

  final Widget icon;
  final String title;
  final num? number;

  @override
  Widget build(BuildContext context) {
    Color color =
        (number ?? 0) > 0 ? Colors.green.shade500 : Colors.red.shade500;
    String newTitle = (number ?? 0) > 0 ? '+$number' : '$number';

    return Visibility(
      visible: number != null,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon,
              Text(
                title,
                style: TextStyle(color: color),
              ),
              Text(
                newTitle,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: color),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
