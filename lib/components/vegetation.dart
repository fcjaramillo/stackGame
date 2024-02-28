part of 'components.dart';

class VegetationComponent extends SpriteComponent {
  int type;
  double scaleFactor;

  VegetationComponent({
    required this.type,
    required this.scaleFactor,
    super.position,
  }) : super(
          size: Vector2.all(vegetationSide * scaleFactor),
          priority: -1,
        );

  VegetationComponent.grass({
    super.position,
  })  : type = 8,
        scaleFactor = 1.2 {
    size = Vector2.all(vegetationSide * scaleFactor);
    priority = -2;
  }

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load('vegetation/${getVegetationFrom(type)}.png');
    priority = -15;
    super.onLoad();
  }
}

String getVegetationFrom(int type) {
  switch (type) {
    case 0:
      return 'b1';
    case 1:
      return 'b2';
    case 2:
      return 't1';
    case 3:
      return 't2';
    case 4:
      return 't3';
    case 5:
      return 't4';
    case 6:
      return 't5';
    case 7:
      return 't6';
    default:
      return 'grass';
  }
}
