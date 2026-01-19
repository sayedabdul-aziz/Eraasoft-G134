import 'person.dart';

void main() {
  var map = [
    {"name": "Ahmed", "age": 22, "gender": "male"},
    {"name": "Ahmed", "age": 22, "gender": "male"},
    {"name": "Ahmed", "age": 22, "gender": "male"},
    {"name": "Ahmed", "age": 22, "gender": "male"},
    {"name": "Ahmed", "age": 22, "gender": "male"},
    {"name": "Ahmed", "age": 22, "gender": "male"},
    {"name": "Ahmed", "age": 22, "gender": "male"},
  ];

  (map as List<Map<String, dynamic>>).forEach((element) {
    Person p = Person.fromJson(element);
    p.display();
  });
}
