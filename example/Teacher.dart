import 'Person.dart';

class Teacher extends Person {
  int teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID)
      : coursesTaught = <String>[], // Initialize the list here
        super(name, age, address);

  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void addCourseTaught(String course) {
    coursesTaught.add(course);
  }

  void displayCoursesTaught() {
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}
