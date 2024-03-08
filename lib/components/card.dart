part of 'components.dart';

enum AnimationType {
  initialBounce,
  shake,
  none,
}

class CardComponent extends SpriteComponent
    with
        CollisionCallbacks,
        DragCallbacks,
        TapCallbacks,
        HasGameReference<StackGame> {
  final CardModel card;
  bool move = false;
  double time = 0.0;
  final _debouncer = Debouncer(milliseconds: 10);
  double animationTime = 0;
  bool activeAnimation;
  Vector2 animationDelta;
  AnimationType _animationType = AnimationType.initialBounce;
  bool _shakeAnimationClockwise = true;
  late double deltaX;
  late double deltaY;

  CardComponent({
    required this.card,
    required super.position,
    this.activeAnimation = false,
    Vector2? animationDelta,
  })  : animationDelta = animationDelta ?? Vector2(45, 100),
        super(
          size: Vector2(
            kCardWidth,
            kCardHeight,
          ),
          children: [RectangleHitbox()],
        ) {
    anchor = Anchor.center;
    position += size;
    debugMode = false;
    deltaX = this.animationDelta.x / 45;
    deltaY = this.animationDelta.y / 15;
  }

  void moveCard(Vector2 position) {
    this.position = position;
  }

  void changePriority(int p) {
    priority = p;
  }

  void changeAnimation(AnimationType animationType) {
    _animationType = animationType;
  }

  Future<bool> finishDay() async {
    bool status = false;
    if (isPerson) {
      status = await eatFood();
    }

    game.health.value = card.newHealth(game.health.value);
    game.oxygen.value = card.newOxygen(game.oxygen.value);
    game.carbonFootprint.value =
        card.newCarbonFootprint(game.carbonFootprint.value);
    game.handicap.value = card.newHandicap(game.handicap.value);
    return status;
  }

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load('cards/${card.id}.png');
    game.card.value -= card.quantity < 0 ? card.quantity : 0;
    game.cardMax.value += card.quantity > 0 ? card.quantity : 0;
    game.food.value += (card.food ?? 0) > 0 ? card.food ?? 0 : 0;
    game.energyMax.value += (card.energy ?? 0) > 0 ? card.energy ?? 0 : 0;
    if (card.id == kWarehouse.id) {
      game.energy.value -= card.energy ?? 0;
    }
    return super.onLoad();
  }

  @override
  void onRemove() {
    game.card.value += card.quantity < 0 ? card.quantity : 0;
    game.cardMax.value -= card.quantity > 0 ? card.quantity : 0;
    game.food.value -= (card.food ?? 0) > 0 ? card.food ?? 0 : 0;
    game.energyMax.value -= (card.energy ?? 0) > 0 ? card.energy ?? 0 : 0;
    super.onRemove();
  }

  @override
  void update(double dt) {
    if (activeAnimation) {
      switch (_animationType) {
        case AnimationType.none:
          break;
        case AnimationType.initialBounce:
          if (animationTime < kNewCardAnimationDuration) {
            animationTime += dt;
            position += Vector2(
              0.68 * deltaX,
              1.7 *
                  bounceAnimation(animationTime / kNewCardAnimationDuration) *
                  deltaY,
            );
          } else {
            _animationType = AnimationType.none;
            activeAnimation = false;
            animationTime = 0;
          }
          break;
        case AnimationType.shake:
          if (angle > 0.04) {
            _shakeAnimationClockwise = false;
          } else if (angle < -0.04) {
            _shakeAnimationClockwise = true;
          }
          if (_shakeAnimationClockwise) {
            angle += dt * 1.2;
          } else {
            angle -= dt * 1.2;
          }
          break;
      }
    }
    super.update(dt);
  }

  @override
  void onTapDown(TapDownEvent event) {
    game.cardSelected.value = GameCardModel.byType(card);
    super.onTapDown(event);
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
                )..searchRecipe(),
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
      if (move && isPerson && game.canInteract.value) {
        _debouncer.run(() {
          if (!move && !game.isPause) {
            PackModel pack = other.pack;
            if (pack.id == 0) {
              game.changeValueQuest(2);
            }
            if (game.coin.value >= pack.cost) {
              game.coin.value -= pack.cost;
              List<CardModel> newCards = pack.generateCards(game.random);
              for (int i = 0; i < newCards.length; i++) {
                if (newCards[i].type == TypeCard.idea) {
                  game.changeValueQuest(6);
                  game.changeValueRecipe(newCards[i]);
                }
                game.world.add(
                  CardComponent(
                    card: newCards[i],
                    position: other.position + other.size / 2,
                    activeAnimation: true,
                    animationDelta: getAnimationDelta(i),
                  ),
                );
              }
            }
          }
        });
      }
    } else if (other is SellComponent) {
      if (move && !isPerson && card.id != kPlastic.id) {
        _debouncer.run(() {
          if (!move) {
            if (card.id == kSallary.id) {
              game.changeValueQuest(1);
            }
            game.coin.value += card.prize;
            game.world.remove(this);
          }
        });
      }
    }
  }

  int cardInStack(CardComponent card) =>
      game.stacks.indexWhere((e) => e.cards.contains(card));
}

Vector2 getAnimationDelta(int i) {
  double deltaX = 50;
  double deltaY = 30;
  if (i == 0 || i == 1) {
    deltaY = 90;
  }
  if (i == 1) {
    deltaX = -70;
  } else if (i == 2) {
    deltaX = 140;
  } else if (i == 3) {
    deltaX = -240;
  }

  return Vector2(
    deltaX,
    deltaY,
  );
}

double bounceAnimation(double x) {
  if (x < 0.15) {
    return -12 * (0.15 - x);
  } else if (x < 0.3) {
    return 20 * (x - 0.15);
  } else if (x < 0.65) {
    return 15 * (x - 0.475);
  } else if (x < 1) {
    return 10 * (x - 0.825);
  }
  return 0;
}
