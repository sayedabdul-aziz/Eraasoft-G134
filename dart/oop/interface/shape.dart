import 'dart:math';

abstract class Area {
  void getArea(); // abstract method
}

abstract class Perimeter {
  void getPerimeter(); // abstract method
}

mixin Draw {
  int sides = 4;
  play() {
    // some code
  }

  void draw() {
    // some code
  }
}

class Circle extends Area with Draw implements Perimeter {
  double radius;
  Circle(this.radius);

  @override
  void getArea() {
    print("Area of Circle: ${pi * radius * radius}");
  }

  @override
  void getPerimeter() {
    print("Perimeter of Circle: ${2 * pi * radius}");
  }
}

// notification type => handle redirection based on type
// 1 => message screen
// 2 => friend request screen
// 3 => like screen
// 4 => comment screen

enum NotificationType {
  message(1),
  friendRequest(2),
  like(3),
  comment(4);

  final int value;
  const NotificationType(this.value);

  static NotificationType fromInt(int value) {
    for (var type in NotificationType.values) {
      if (type.value == value) {
        return type;
      }
    }
    return NotificationType.message;
  }
}

goToScreen(NotificationType type) {
  switch (type) {
    case NotificationType.message:
      print("Go to Message Screen");
      break;
    case NotificationType.friendRequest:
      print("Go to Friend Request Screen");
      break;
    case NotificationType.like:
      print("Go to Like Screen");
      break;
    case NotificationType.comment:
      print("Go to Comment Screen");
      break;
  }
}
