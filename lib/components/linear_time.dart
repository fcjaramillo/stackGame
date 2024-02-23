part of 'components.dart';

class LinearTime extends RectangleComponent {
  LinearTime({
    required super.size,
    required super.position,
    required this.totalTime,
  }) : super(
          paint: Paint()..color = Color.fromARGB(255, 23, 23, 23),
        );

  final double totalTime;
  double currentTime = 0.0;

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(size.x + 10, size.y + 10);
  }

  @override
  void update(double dt) {
    super.update(dt);
    currentTime += dt;
    if (currentTime >= totalTime) {
      currentTime = 0;
    }
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    Rect rect = Rect.fromPoints(const Offset(5, 5),
        Offset(5 + (currentTime / totalTime) * (size.x - 10), 30));
    Paint paint = Paint()..color = Colors.blue;
    canvas.drawRect(rect, paint);
  }
}
