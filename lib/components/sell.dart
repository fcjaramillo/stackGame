part of 'components.dart';

class SellComponent extends RectangleComponent
    with HasGameReference<StackGame> {
  SellComponent({
    required super.position,
  }) : super(
          paint: Paint()..color = const Color.fromARGB(255, 24, 21, 211),
          children: [RectangleHitbox()],
        );

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(cardWidth, cardHeight);
  }
}
