import 'dart:math';

abstract class Shape {
  double d1;
  double d2;
  Shape(this.d1, [this.d2 = 0]);

  void getArea(); // abstract method
  display() {
    // concrete method
    print("This is a shape");
  }
}

class Circle extends Shape {
  Circle(super.d1);

  @override
  void getArea() {
    print("Area of Circle: ${pi * d1 * d1}");
  }
}

class Square extends Shape {
  Square(super.d1);

  @override
  void getArea() {
    print("Area of Square: ${d1 * d1}");
  }
}

class Rectangle extends Shape {
  Rectangle(super.d1, super.d2);

  @override
  void getArea() {
    print("Area of Rectangle: ${d1 * d2}");
  }
}
