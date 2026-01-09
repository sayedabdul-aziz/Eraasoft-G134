void main() {
  display("Ahmed", 33, "Egyptian");
  display2("Ahmed", 33);
  display3(age: 33, nationality: "Egyptian", name: "Ahmed");
  display4(age: 33, name: "Ahmed");
  display5(age: 33, "Ahmed", "Egyptian");
}

// Types of Parameters (Positional Parameters, Named Parameters)

// 1) Positional Parameters (Not ordered,  Required)
void display(String name, int age, String nationality) {
  print("name $name, age $age, nationality $nationality");
}

// 2) Positional Parameters (Not ordered,  Required + Optional)
void display2(String name, int age, [String nationality = "Egyptian"]) {
  print("name $name, age $age, nationality $nationality");
}

// 3) Named Parameters (Ordered,  Required)
void display3({
  required String name,
  required int age,
  required String nationality,
}) {
  print("name $name, age $age, nationality $nationality");
}

// 4) Named Parameters (Ordered,  Required + Optional)
void display4({
  required String name,
  required int age,
  String nationality = "Egyptian",
}) {
  print("name $name, age $age, nationality $nationality");
}

// 4) Mix Parameters (Ordered,  Required + Optional)
void display5(String name, String nationality, {required int age}) {
  print("name $name, age $age, nationality $nationality");
}
