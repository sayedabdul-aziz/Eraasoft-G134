import 'shape.dart';

void main() {
  Circle circle = Circle(5);

  circle.getArea();
  circle.getPerimeter();

  NotificationType type = NotificationType.fromInt(2);

  goToScreen(type);
}
