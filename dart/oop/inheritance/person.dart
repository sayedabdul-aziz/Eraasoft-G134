class Person {
  String? name;
  String? id;

  Person({required this.name, required this.id});
  displayInfo() {
    print("Parent Class");
  }
}

class Student extends Person {
  int? grade;

  Student({required super.name, required super.id, this.grade});
  // Student({required String name, required String id, this.grade})
  //   : super(name: name, id: id);

  @override
  displayInfo() {
    super.displayInfo();
    print("name : $name, id : $id, grade : $grade");
  }
}

class Doctor extends Person {
  double? salary;

  Doctor({required super.name, required super.id, this.salary});

  @override
  displayInfo() {
    print("name : $name, id : $id, salary : $salary");
  }
}
