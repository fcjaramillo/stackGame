part of 'components.dart';

class CardComponent extends SpriteComponent
    with CollisionCallbacks, DragCallbacks, HasGameReference<StackGame> {
  final CardModel card;
  bool move = false;
  double time = 0.0;
  final _debouncer = Debouncer(milliseconds: 10);

  CardComponent({required this.card, required super.position})
      : super(
          size: Vector2(
            cardWidth,
            cardHeight,
          ),
          children: [RectangleHitbox()],
        ) {
    debugMode = true;
  }

  void moveCard(Vector2 position) {
    position = position;
  }

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load('cards/${card.id}.png');
    return super.onLoad();
  }

  @override
  void onDragStart(DragStartEvent event) {
    super.onDragStart(event);
    move = true;
    priority = 10;
  }

  @override
  void onDragEnd(DragEndEvent event) {
    super.onDragEnd(event);
    move = false;
    priority = 0;
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    super.onDragUpdate(event);
    position += event.localDelta;
    if (event.canvasEndPosition.x <= 0 + size.x / 2) {
      position = Vector2(10, position.y);
    }
    if (event.canvasEndPosition.y <= 0) {
      position = Vector2(position.x, 10);
    }
    if (event.canvasEndPosition.x >= game.width) {
      position = Vector2(
          (game.width / game.camera.viewfinder.zoom) - size.x - 10, position.y);
    }
    if (event.canvasEndPosition.y >= game.height) {
      position = Vector2(position.x,
          (game.height / game.camera.viewfinder.zoom) - size.y - 10);
    }
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);
    if (other is PlayAreaComponent) {
    } else if (other is CardComponent) {
      if (move) {
        _debouncer.run(() {
          if (!move) {
            position =
                Vector2(other.position.x, other.position.y + size.y * 0.15);
          }
        });
      }
    } else if (other is PackComponent) {
      if (move) {
        _debouncer.run(() {
          if (!move) {
            PackModel pack = other.pack;
            if (game.coin.value >= pack.cost) {
              game.coin.value -= pack.cost;
              List<CardModel> newCards = pack.generateCards();
              newCards.map((CardModel card) => {});
              for (CardModel card in newCards) {
                game.world.add(CardComponent(
                  card: card,
                  position: Vector2(
                    position.x + (50 * card.id),
                    position.y + (50 * card.id),
                  ),
                ));
              }
            }
          }
        });
      }
    }
  }
}
