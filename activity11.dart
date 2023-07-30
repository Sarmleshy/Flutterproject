import 'dart:io';

void main() {
  stdout.write("Please Enter your CGPA: ");
  String input = stdin.readLineSync()!;

  double? cgpa = double.tryParse(input);

  if (cgpa == null) {
    print("Invalid input. Please enter a valid CGPA!");
  } else {
    if (cgpa >= 4.50 && cgpa <= 5.00) {
      print("1st class");
    } else if (cgpa >= 3.50 && cgpa <= 4.49) {
      print("2nd class upper");
    } else if (cgpa >= 2.40 && cgpa <= 3.49) {
      print("2nd class lower");
    } else if (cgpa >= 1.50 && cgpa <= 2.39) {
      print("3rd class");
    } else if (cgpa >= 1.00 && cgpa <= 1.49) {
      print("Pass");
    } else if (cgpa < 1.00) {
      print("Fail");
    } else {
      print("Invalid input. Please enter a valid CGPA.");
    }
  }
}
