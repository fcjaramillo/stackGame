part of 'components.dart';

class PlayAreaComponent extends RectangleComponent
    with HasGameReference<StackGame>, DragCallbacks {
  PlayAreaComponent()
      : super(
          paint: Paint()..color = Color.fromARGB(255, 48, 190, 55),
          children: [RectangleHitbox()],
        );

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(game.width, game.height);
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    game.camera.viewfinder.position -= event.localDelta;
    super.onDragUpdate(event);
  }
}
