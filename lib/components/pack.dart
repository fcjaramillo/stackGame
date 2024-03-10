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
    myNotIdeas = pack.ideas;
    for (CardModel idea in pack.ideas) {
      int pos = game.recipesNotifier.value
          .indexWhere((r) => idea.name.contains(r.create?[0].name ?? 'human'));
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
        type: TypeCard.pack,
        prize: 0,
        quantity: 0,
      ),
    );
    super.onTapDown(event);
  }

  List<CardModel> generateCards(Random ramdom) {
    List<CardModel> newCards = <CardModel>[];
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
                newCards.add(pack.cards[0].card);
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
    return newCards;
  }
}
