import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stack/const.dart';
import 'package:stack/data/data.dart';
import 'package:stack/l10n/generated/l10n.dart';
import 'package:stack/models/models.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({
    required this.onTapCard,
    required this.recipesNotifier,
    required this.questNotifier,
    required this.achivementNotifier,
    super.key,
  });

  final Function(CardModel) onTapCard;
  final List<RecipeModel> recipesNotifier;
  final List<QuestModel> questNotifier;
  final List<AchivementModel> achivementNotifier;

  @override
  State<TabIndicator> createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator> {
  int index = 0;

  final List<String> titles = [
    L10n.current.quest,
    L10n.current.recipes,
    L10n.current.achivements,
  ];

  List<QuestModel> quests = List<QuestModel>.from(kRoadMap);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: 40,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              border: Border.all(
                color: kColorBluePrincipal,
                width: 5,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                for (int i = 0; i < titles.length; i++) ...<Widget>[
                  FcTitleTab(
                    isSelected: i == index,
                    title: titles[i],
                    onTap: () {
                      setState(() {
                        index = i;
                      });
                    },
                  ),
                  if (i < titles.length - 1)
                    const VerticalDivider(
                      color: kColorBluePrincipal,
                      thickness: 5,
                    ),
                ],
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kColorBluePrincipal,
                    width: 5,
                  ),
                  left: BorderSide(
                    color: kColorBluePrincipal,
                    width: 5,
                  ),
                  right: BorderSide(
                    color: kColorBluePrincipal,
                    width: 5,
                  ),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IndexedStack(
                  index: index,
                  children: [
                    QuestSection(
                      quests: widget.questNotifier,
                    ),
                    RecipeSection(
                      onTapCard: widget.onTapCard,
                      recipes: widget.recipesNotifier,
                    ),
                    AchivementSecion(
                      achivements: widget.achivementNotifier,
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

class AchivementSecion extends StatelessWidget {
  const AchivementSecion({
    required this.achivements,
    super.key,
  });

  final List<AchivementModel> achivements;

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (context, index) => AchivementTile(
          achivement: achivements[index],
          rightAlignement: index.isOdd,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 14),
        itemCount: achivements.length,
      );
}

class QuestSection extends StatelessWidget {
  const QuestSection({
    required this.quests,
    super.key,
  });

  final List<QuestModel> quests;

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (context, index) => QuestTile(
          quest: quests[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 7),
        itemCount: quests.length,
      );
}

class QuestTile extends StatelessWidget {
  const QuestTile({
    required this.quest,
    super.key,
  });

  final QuestModel quest;

  @override
  Widget build(BuildContext context) => ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 4.0),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              quest.isComplete
                  ? Icons.check_box
                  : Icons.check_box_outline_blank,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 1,
              child: AutoSizeText(
                quest.name,
                style: const TextStyle(
                  fontSize: 14,
                ),
                minFontSize: 6,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        children: <Widget>[
          AutoSizeText(
            quest.description,
            style: const TextStyle(fontSize: 10),
            minFontSize: 4,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      );
}

class RecipeSection extends StatelessWidget {
  const RecipeSection({
    required this.onTapCard,
    required this.recipes,
    super.key,
  });

  final Function(CardModel) onTapCard;
  final List<RecipeModel> recipes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (contex, index) => RecipesTile(
        recipe: recipes[index],
        onTapCard: onTapCard,
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 7),
      itemCount: recipes.length,
    );
  }
}

class RecipesTile extends StatelessWidget {
  const RecipesTile({
    required this.recipe,
    required this.onTapCard,
    super.key,
  });

  final Function(CardModel) onTapCard;
  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: recipe.isVisible,
      replacement: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        leading: const FaIcon(
          FontAwesomeIcons.book,
        ),
        title: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 20,
            maxWidth: 100,
          ),
          child: const SizedBox(
            width: double.infinity,
            height: 15,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
          ),
        ),
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 8),
        title: AutoSizeText(
          recipe.create?[0].name ?? '',
          style: const TextStyle(fontSize: 12),
          minFontSize: 6,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        leading: const FaIcon(
          FontAwesomeIcons.book,
          size: 18,
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          for (int i = 0; i < recipe.materials.length; i++)
            GestureDetector(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.diamond,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: AutoSizeText(
                          recipe.materials[i].title,
                          minFontSize: 6,
                          maxLines: 1,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
              onTap: () => onTapCard(recipe.materials[i].card),
            ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              const FaIcon(
                FontAwesomeIcons.clock,
                size: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: AutoSizeText(
                  L10n.of(context).timeRecipe(recipe.time),
                  minFontSize: 6,
                  maxLines: 1,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AchivementTile extends StatelessWidget {
  const AchivementTile({
    required this.achivement,
    required this.rightAlignement,
    super.key,
  });

  final AchivementModel achivement;
  final bool rightAlignement;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: !rightAlignement ? Alignment.topRight : Alignment.topLeft,
      child: FractionallySizedBox(
        widthFactor: 0.95,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (!rightAlignement) ...[
              FaIcon(
                FontAwesomeIcons.trophy,
                color: achivement.isComplete
                    ? Colors.brown.shade600
                    : Colors.black,
              ),
              const SizedBox(width: 10),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: rightAlignement
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  if (achivement.isComplete)
                    AutoSizeText(
                      achivement.name,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                      minFontSize: 6,
                      maxLines: 2,
                    )
                  else
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 20,
                        maxWidth: 100,
                      ),
                      child: const SizedBox(
                        width: double.infinity,
                        height: 15,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 1.5),
                  if (achivement.isComplete)
                    AutoSizeText(
                      achivement.description,
                      textAlign:
                          rightAlignement ? TextAlign.end : TextAlign.start,
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                      minFontSize: 6,
                      maxLines: 4,
                    )
                  else ...<Widget>[
                    const SizedBox(
                      width: double.infinity,
                      height: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 0.5),
                    const FractionallySizedBox(
                      widthFactor: 0.85,
                      child: SizedBox(
                        width: double.infinity,
                        height: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (rightAlignement) ...[
              const SizedBox(width: 10),
              FaIcon(
                FontAwesomeIcons.trophy,
                color: achivement.isComplete ? Colors.amber : Colors.black,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class FcTitleTab extends StatelessWidget {
  const FcTitleTab({
    required this.title,
    required this.onTap,
    required this.isSelected,
    super.key,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: AutoSizeText(
          title,
          style: TextStyle(
            fontSize: 10,
            color: isSelected ? Colors.white : null,
          ),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          minFontSize: 4,
          maxLines: 1,
        ),
      ),
    );
  }
}
