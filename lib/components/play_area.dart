part of 'components.dart';

class PlayAreaComponent extends RectangleComponent
    with HasGameReference<StackGame>, DragCallbacks {
  PlayAreaComponent()
      : super(
          children: [RectangleHitbox()],
        );

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    final random = game.random;
    size = Vector2(game.width, game.height);
    _loadBackground(random);
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    game.camera.viewfinder.position -= event.localDelta;
    game.camera.viewfinder.position = Vector2(
      game.camera.viewfinder.position.x.clamp(kMinCameraX, kMaxCameraX),
      game.camera.viewfinder.position.y.clamp(kMinCameraY, kMaxCameraY),
    );
    super.onDragUpdate(event);
  }

  void _loadBackground(Random random) {
    for (int x = 0; x < 4; x++) {
      for (int y = 0; y < 3; y++) {
        final Vector2 currentPosition = position +
            Vector2(
                  x.toDouble() - 0.18,
                  y.toDouble() - 0.15,
                ) *
                kGrassSide;
        game.world.add(
          VegetationComponent.grass(
            position: currentPosition,
          ),
        );
      }
    }
    for (int x = -1; x < 24; x++) {
      for (int y = -1; y < 16; y++) {
        final Vector2 currentPosition = position +
            Vector2(
                  x.toDouble(),
                  y.toDouble(),
                ) *
                kVegetationSide;
        final value = random.nextInt(100);
        if (value < 2) {
          game.world.add(
            VegetationComponent(
              type: random.nextInt(2),
              scaleFactor: random.nextDouble() * 0.2 + 0.35,
              position: currentPosition,
            ),
          );
        } else if (value < 8) {
          game.world.add(
            VegetationComponent(
              type: random.nextInt(6) + 2,
              scaleFactor: random.nextDouble() * 0.9 + 0.5,
              position: currentPosition,
            ),
          );
        }
      }
    }
  }
}
