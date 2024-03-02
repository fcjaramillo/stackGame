import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stack/const.dart';
import 'package:stack/data/data.dart';
import 'package:stack/models/models.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({super.key});

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
                child: SingleChildScrollView(
                  child: IndexedStack(
                    index: index,
                    children: const [
                      QuestSection(),
                      RecipeSection(),
                      AchivementSecion(),
                    ],
                  ),
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
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        for (int i = 0; i < kAchivementsList.length; i++) ...<Widget>[
          AchivementTile(
            achivement: kAchivementsList[i],
            rightAlignement: i.isEven,
          ),
          const SizedBox(height: 7),
        ]
      ],
    );
  }
}

class QuestSection extends StatelessWidget {
  const QuestSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        for (int i = 0; i < kAchivementsList.length; i++) ...<Widget>[
          AchivementTile(
            achivement: kAchivementsList[i],
            rightAlignement: i.isEven,
          ),
          const SizedBox(height: 7),
        ]
      ],
    );
  }
}

class RecipeSection extends StatelessWidget {
  const RecipeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        for (int i = 0; i < recipes.length; i++) ...<Widget>[
          RecipesTile(
            recipe: recipes[i],
          ),
          const SizedBox(height: 7),
        ]
      ],
    );
  }
}

class RecipesTile extends StatelessWidget {
  const RecipesTile({
    required this.recipe,
    super.key,
  });

  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        recipe.id.toString(),
      ),
      trailing: const FaIcon(
        FontAwesomeIcons.book,
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (int i = 0; i < recipe.materials.length; i++)
          Text(recipe.materials[i]),
      ],
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
        widthFactor: 0.8,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FaIcon(
              FontAwesomeIcons.trophy,
              color: achivement.isComplete ? Colors.orangeAccent : Colors.black,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
