// {
//   "name": "Ahmed",
//   "age": 22,
//   "gender" : "male"
// }

// map["name"][0]["first_name"]
// person.name

class Person {
  // attributes
  String? name;
  int? age;
  String? gender;

  Person({required this.name, required this.age, this.gender});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(name: json['name'], age: json['age'], gender: json['gender']);
  }

  // methods
  void display() {
    print("name $name, age $age, gender $gender");
  }

  void display1(String email) {
    print("name $name, age $age, gender $gender");
  }
}
