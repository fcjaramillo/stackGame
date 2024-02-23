part of 'components.dart';

class SellComponent extends RectangleComponent
    with HasGameReference<StackGame> {
  SellComponent({
    required super.position,
  }) : super(
          paint: Paint()..color = Color.fromARGB(255, 24, 21, 211),
          children: [RectangleHitbox()],
        );

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(150, 170);
  }
}
