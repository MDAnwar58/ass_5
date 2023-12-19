import 'Student.dart';
import 'Teacher.dart';
import 'Person.dart';

class StudentManagementSystem {
  static void main() {
    // In the main method, create instances of Student and Teacher classes.
    var student = Student('John Doe', 20, '123 Main St', 12345);
    student.addCourseScore(90);
    student.addCourseScore(85);
    student.addCourseScore(82);

    var teacher = Teacher('Mrs. Smith', 35, '456 Oak St', 56789);
    teacher.addCourseTaught('Math');
    teacher.addCourseTaught('English');
    teacher.addCourseTaught('Bangla');

    // Set the attributes using appropriate methods.
    // Display role of each person using displayRole() method.
    displayPersonInformation(student);
    print('');
    displayPersonInformation(teacher);
  }

  static void displayPersonInformation(Person person) {
    print('${person.runtimeType} Information:');
    person.displayRole();
    print('Name: ${person.getName()}');
    print('Age: ${person.getAge()}');
    print('Address: ${person.getAddress()}');

    if (person is Student) {
      print('Average Score: ${person.calculateAverageScore()}');
    } else if (person is Teacher) {
      (person as Teacher).displayCoursesTaught();
    }
  }
}
