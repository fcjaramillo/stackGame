part of 'components.dart';

class SellComponent extends SpriteComponent with HasGameReference<StackGame> {
  SellComponent({
    required super.position,
  }) : super(
          size: Vector2(
            kCardWidth,
            kCardHeight,
          ),
          children: [RectangleHitbox()],
        );

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load('sell.png');
    super.onLoad();
  }
}
