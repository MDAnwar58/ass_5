import 'Person.dart';

class Student extends Person {
  int studentID;
  double grade;
  List<double> courseScores;

  // Initialize the grade and courseScores list here
  Student(String name, int age, String address, this.studentID)
      : grade = 0.0, // or any other default value
        courseScores = <double>[],
        super(name, age, address);

  @override
  void displayRole() {
    print('Role: Student');
  }

  void addCourseScore(double score) {
    courseScores.add(score);
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}
