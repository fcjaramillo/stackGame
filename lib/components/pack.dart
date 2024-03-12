part of 'components.dart';

class PackComponent extends SpriteComponent
    with CollisionCallbacks, TapCallbacks, HasGameReference<StackGame> {
  final PackModel pack;

  PackComponent({
    required this.pack,
    required super.position,
  }) : super(
          size: Vector2(
            kCardWidth,
            kCardHeight,
          ),
          children: [RectangleHitbox()],
        );

  List<CardModel> myNotIdeas = [];

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load('packs/${pack.id}.png');
    myNotIdeas = [...pack.ideas];
    for (CardModel idea in pack.ideas) {
      int pos = game.recipesNotifier.value
          .indexWhere((r) => idea.id == r.cardCreate?.id);
      if (pos >= 0 && game.recipesNotifier.value[pos].isVisible) {
        myNotIdeas.remove(idea);
      }
    }

    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    game.cardSelected.value = GameCardModel.byType(
      CardModel(
        id: pack.id,
        name: pack.name,
        description: pack.description,
        nameInt: (context) => pack.nameInt(context),
        descriptionInt: (context) => getDescriptionPack(context),
        type: TypeCard.pack,
        prize: 0,
        quantity: 0,
      ),
    );
    super.onTapDown(event);
  }

  List<CardModel> generateCards(Random ramdom) {
    List<CardModel> newCards = <CardModel>[];
    if (pack.id != 5) {
      for (int i = 0; i < pack.numberCards; i++) {
        int random = ramdom.nextInt(100) + 1;
        int percentage = 0;

        for (int j = 0; j < pack.cards.length; j++) {
          percentage += pack.cards[j].percentage.toInt();
          if (random <= percentage) {
            if (pack.cards[j].card.id == 1000) {
              if (myNotIdeas.isNotEmpty) {
                int indexIdea = random % myNotIdeas.length;
                newCards.add(myNotIdeas[indexIdea]);
                myNotIdeas.removeAt(indexIdea);
              } else {
                if (pack.devCard != null) {
                  int iCard = game.world.children
                      .query<CardComponent>()
                      .indexWhere((c) => c.card.id == pack.devCard!.id);
                  if (iCard == -1) {
                    newCards.add(pack.devCard!);
                    break;
                  }
                }
                int index = random % pack.cards.length;
                if (pack.cards[index].card.id == 1000) {
                  newCards.add(pack.cards[index - 1].card);
                }
                newCards.add(pack.cards[index].card);
              }

              break;
            }
            newCards.add(pack.cards[j].card);
            break;
          }
        }
      }
    } else {
      List<RecipeModel> recipes = game.recipesNotifier.value
          .where((e) => e.cardCreate != null && !e.isVisible)
          .toList();
      print(recipes.length);

      for (int i = 0; i < pack.numberCards; i++) {
        int random = ramdom.nextInt(100) + 1;
        int indexIdea = random % recipes.length;
        List<PackComponent> packsComponents =
            game.world.children.query<PackComponent>();
        for (PackComponent packComponent in packsComponents) {
          if (packComponent.myNotIdeas.isNotEmpty) {
            bool j = packComponent.myNotIdeas
                .contains(recipes[indexIdea].cardCreate!);
            if (j) {
              packComponent.myNotIdeas.remove(recipes[indexIdea].cardCreate!);
            }
          }
        }
        newCards.add(recipes[indexIdea].cardCreate!);
      }
    }

    return newCards;
  }

  String getDescriptionPack(BuildContext context) {
    String allProbalities = '';

    int unlocked = pack.ideas.length - myNotIdeas.length;

    L10n.of(context).unlock(unlocked, pack.ideas.length);

    if (unlocked == pack.ideas.length && pack.devCard != null) {
      allProbalities += 'Dev???\n\n   ';
    }

    for (CardProbabilityModel cp in pack.cards) {
      allProbalities += cp.getString(context);
    }

    return '''   ${pack.descriptionInt(context)}

   ${L10n.of(context).unlock(unlocked, pack.ideas.length)}
  
   ${L10n.of(context).probabilities}:
  
   $allProbalities''';
  }
}
