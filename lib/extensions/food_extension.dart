part of 'extensions.dart';

extension FoodExtension on CardComponent {
  bool get isFood => card.type == TypeCard.food;

  Future<void> animateTo(
    Vector2 newPosition, {
    double seconds = 1.5,
  }) async {
    if (isFood) {
      priority = 10;
      await Future.doWhile(() async {
        final Vector2 delta = newPosition - position;
        double angle = delta.screenAngle().abs();
        while (angle > pi / 2) {
          angle -= pi / 2;
        }
        final Vector2 displacement = Vector2(
              delta.x * sin(angle),
              delta.y * cos(angle),
            ).normalized() *
            6;
        await Future.delayed(const Duration(milliseconds: 16));
        if ((position - newPosition).length > 3) {
          position += displacement;
          return true;
        }
        return false;
      });

      await Future.doWhile(() async {
        await Future.delayed(const Duration(milliseconds: 16));
        if (size.length > 1) {
          size *= 0.85;
          return true;
        }
        _removeFood();
        return false;
      });
    }
  }

  void _removeFood() {
    // TODO: delete
    game.world.remove(this);
  }
}
