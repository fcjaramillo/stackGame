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

  double totalTime = 10.0; // Duración total de la barra en segundos
  double currentTime = 0.0;

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load('packs/${pack.id}.png');
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
}
