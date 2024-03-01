part of 'components.dart';

class PackComponent extends SpriteComponent
    with CollisionCallbacks, HasGameReference<StackGame> {
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
        ) {
    debugMode = true;
  }

  double totalTime = 10.0; // Duración total de la barra en segundos
  double currentTime = 0.0;

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load('packs/pack.png');
    return super.onLoad();
  }
}
