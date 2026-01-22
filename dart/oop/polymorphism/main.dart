import 'shape.dart';

void main() {
  Shape circle = Circle(5);
  Square square = Square(4);

  getShapeArea(circle);
  getShapeArea(square);
}

getShapeArea(Shape s) {
  s.getArea();
}

// payment method (instapay, credit card, paypal, wallet)
