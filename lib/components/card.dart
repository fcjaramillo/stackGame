part of 'components.dart';

class CardComponent extends SpriteComponent
    with CollisionCallbacks, DragCallbacks, HasGameReference<StackGame>
    implements TickerProvider {
  final CardModel card;
  bool move = false;
  double time = 0.0;
  final _debouncer = Debouncer(milliseconds: 10);
  late AnimationController _animationController;
  late Animation<double> _flipAnimation;

  flippingCard() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _flipAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  void startFlip() {
    _animationController.forward(from: 0);
  }

  @override
  void render(Canvas canvas) {
    //double rotateY = _flipAnimation.value * 3.14159;
    //final float = canvas.getTransform();

    //canvas.scale(_flipAnimation.value, _flipAnimation.value);
    //position = position + position.normalized() * _flipAnimation.value;

    sprite?.render(canvas, size: size);
    super.render(canvas);
  }

  CardComponent({required this.card, required super.position})
      : super(
          size: Vector2(
            cardWidth,
            cardHeight,
          ),
          children: [RectangleHitbox()],
        ) {
    debugMode = false;
  }

  void moveCard(Vector2 position) {
    this.position = position;
  }

  void changePriority(int p) {
    priority = p;
  }

  void finishDay() {
    game.health.value = card.newHealth(game.health.value);
    game.food.value = card.newFood(game.food.value);
    game.oxygen.value = card.newOxygen(game.oxygen.value);
    game.carbonFootprint.value =
        card.newCarbonFootprint(game.carbonFootprint.value);
    game.energy.value = card.newEnergy(game.energy.value);
    game.handicap.value = card.newHandicap(game.handicap.value);
  }

  @override
  FutureOr<void> onLoad() async {
    flippingCard();
    startFlip();
    sprite = await Sprite.load('cards/${card.id}.png');
    return super.onLoad();
  }

  @override
  void onDragStart(DragStartEvent event) {
    super.onDragStart(event);

    for (StackComponent s in game.stacks) {
      if (s.cards.length == 1) {
        game.stacks.remove(s);
      }
    }
    move = true;
    int stackIndex = cardInStack(this);
    if (stackIndex == -1) {
      priority = 10;
    } else {
      List<CardComponent> cards = game.stacks[stackIndex].separateStack(this);
      for (StackComponent s in game.stacks) {
        if (s.cards.length <= 1) {
          game.stacks.remove(s);
        }
      }
      for (CardComponent c in cards) {
        c.changePriority(10);
      }
      if (cards.length > 1) {
        game.stacks.add(StackComponent(cards: cards, game: game));
      }
    }
  }

  @override
  void onDragEnd(DragEndEvent event) {
    super.onDragEnd(event);
    move = false;
    int stackIndex = cardInStack(this);
    if (stackIndex == -1) {
      priority = 0;
    } else {
      priority = 0;
      for (CardComponent c in game.stacks[stackIndex].cards) {
        c.changePriority(0);
      }
    }
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
    if (move) {
      int stackIndex = cardInStack(this);
      if (stackIndex != -1) {
        for (CardComponent c in game.stacks[stackIndex].cards) {
          if (c != this) {
            c.onDragUpdate(event);
          }
        }
      }
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
            int stackIndexThis = cardInStack(this);
            int stackIndexOther = cardInStack(other);
            if (stackIndexOther == -1 && stackIndexThis == -1) {
              position = Vector2(
                other.position.x,
                other.position.y + (size.y * 0.15),
              );
              game.stacks.add(
                StackComponent(
                  cards: [other, this],
                  game: game,
                ),
              );
            } else if (stackIndexOther == -1 && stackIndexThis != -1) {
              for (int i = 0;
                  i < game.stacks[stackIndexThis].cards.length;
                  i++) {
                game.stacks[stackIndexThis].cards[i].position = Vector2(
                  other.position.x,
                  other.position.y + ((size.y * 0.15) * (i + 1)),
                );
              }
              game.stacks.add(StackComponent(
                cards: [other, ...game.stacks[stackIndexThis].cards],
                game: game,
              ));
              game.stacks.last.findRecipe();
              game.stacks.remove(game.stacks[stackIndexThis]);
            } else if (stackIndexOther != -1 && stackIndexThis == -1) {
              game.stacks[stackIndexOther].addCard(this);
            } else if (stackIndexOther != -1 &&
                stackIndexThis != -1 &&
                stackIndexThis != stackIndexOther) {
              Vector2 lastPosition =
                  game.stacks[stackIndexOther].cards.last.position;
              for (int i = 0;
                  i < game.stacks[stackIndexThis].cards.length;
                  i++) {
                game.stacks[stackIndexThis].cards[i].position = Vector2(
                  lastPosition.x,
                  lastPosition.y + ((size.y * 0.15) * (i + 1)),
                );
              }
              for (CardComponent cardThis
                  in game.stacks[stackIndexThis].cards) {
                game.stacks[stackIndexOther].cards.add(cardThis);
              }
              game.stacks.last.findRecipe();
              game.stacks.remove(game.stacks[stackIndexThis]);
            }
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
                game.world.add(
                  CardComponent(
                    card: card,
                    position: Vector2(
                      position.x + (50 * card.id),
                      position.y + (50 * card.id),
                    ),
                  ),
                );
              }
            }
          }
        });
      }
    } else if (other is SellComponent) {
      if (move) {
        _debouncer.run(() {
          if (!move) {
            game.coin.value += card.prize;
            game.world.remove(this);
          }
        });
      }
    }
  }

  int cardInStack(CardComponent card) =>
      game.stacks.indexWhere((e) => e.cards.contains(card));

  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);
}
