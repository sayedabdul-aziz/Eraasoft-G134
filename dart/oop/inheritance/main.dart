import 'person.dart';

void main() {
  Student s1 = Student(name: "Ahmed", id: "123", grade: 3);
  s1.displayInfo();

  Doctor d1 = Doctor(name: "Mohamed", id: "456", salary: 5000);
  d1.displayInfo();
}
