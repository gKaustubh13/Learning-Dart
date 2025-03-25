void main() {
  // Person person = Person();
  // person.name = "Satyendra";
  // person.age = 3;
  // person.getInfo();

  // Person person2 = Person("Sharvan", 22);
  // person2.getInfo();

  // Person person3 = Person.kid();
  // person3.getInfo();
}

class Person {
  String? name;
  int? age;

  // // Default Constructor: A constructor with no parameters
  // Person() {
  //   name = "No name";
  //   age = 0;
  // }

  // // Parameterized Constructor: A constructor with parameters
  // Person(String n, int a) {
  //   name = n;
  //   age = a;
  // }

 Person(this.name, this.age);

  // Named Constructor: A constructor with a specific name
  Person.kid() {
    name = "Kid";
    age = 5;
  }

  void getInfo() {
    print('Name: $name, Age: $age');
  }
}

