part of 'extensions.dart';

extension FoodExtension on CardComponent {
  bool get isFood => card.type == TypeCard.food;

  Future<void> animateTo(
    Vector2 newPosition, {
    double seconds = 1.5,
  }) async {
    if (isFood) {
      final Vector2 delta = newPosition - position;
      final double angle = delta.screenAngle();
      final Vector2 displacement = Vector2(
            -delta.x * sin(angle),
            delta.y * cos(angle),
          ).normalized() *
          6;

      await Future.doWhile(() async {
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
          position = newPosition +
              (Vector2(
                        kCardWidth,
                        kCardHeight,
                      ) -
                      size) /
                  2;
          return true;
        }
        game.world.remove(this);
        return false;
      });
    }
  }
}
