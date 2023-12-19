import 'Role.dart';

class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print('Role: Person');
  }

  String getName() => name;
  int getAge() => age;
  String getAddress() => address;
}
