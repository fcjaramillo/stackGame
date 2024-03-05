import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stack/const.dart';
import 'package:stack/data/data.dart';
import 'package:stack/models/models.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({
    required this.onTapCard,
    required this.recipesNotifier,
    super.key,
  });

  final Function(CardModel) onTapCard;
  final ValueListenable<List<RecipeModel>> recipesNotifier;

  @override
  State<TabIndicator> createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator> {
  int index = 0;

  final List<String> titles = [
    'Quest',
    'Recipes',
    'Achivements',
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
                      quests: quests,
                    ),
                    RecipeSection(
                      onTapCard: widget.onTapCard,
                      recipesNotifier: widget.recipesNotifier,
                    ),
                    const AchivementSecion(),
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
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (context, index) => AchivementTile(
          achivement: kAchivementsList[index],
          rightAlignement: index.isOdd,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 14),
        itemCount: kAchivementsList.length,
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
        title: Text(
          quest.name,
        ),
        leading: Checkbox(
          value: quest.isComplete,
          onChanged: (value) {},
        ),
        children: <Widget>[
          Text(
            quest.description,
          ),
        ],
      );
}

class RecipeSection extends StatelessWidget {
  const RecipeSection({
    required this.onTapCard,
    required this.recipesNotifier,
    super.key,
  });

  final Function(CardModel) onTapCard;
  final ValueListenable<List<RecipeModel>> recipesNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<RecipeModel>>(
      valueListenable: recipesNotifier,
      builder: (context, value, child) => ListView.separated(
        itemBuilder: (contex, index) => RecipesTile(
          recipe: value[index],
          onTapCard: onTapCard,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 7),
        itemCount: value.length,
      ),
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
        title: Text(
          recipe.create?[0].name ?? '',
        ),
        leading: const FaIcon(
          FontAwesomeIcons.book,
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          for (int i = 0; i < recipe.materials.length; i++)
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.diamond,
              ),
              title: Text(recipe.materials[i].title),
              onTap: () => onTapCard(recipe.materials[i].card),
            ),
          ListTile(
            leading: const FaIcon(
              FontAwesomeIcons.clock,
            ),
            title: Text('Time: ${recipe.time} sec'),
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
                    Text(
                      achivement.name,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
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
                    Text(
                      achivement.description,
                      textAlign:
                          rightAlignement ? TextAlign.end : TextAlign.start,
                      style: const TextStyle(
                        fontSize: 10,
                      ),
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
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: isSelected ? Colors.white : null,
          ),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
