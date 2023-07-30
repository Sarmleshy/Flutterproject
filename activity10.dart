import 'dart:io';

void main() {
  stdout.write("Enter your exam score: ");
  String input = stdin.readLineSync()!;
  int score = int.parse(input);

  if (score > 69 && score <= 100) {
    print("You scored an A");
  } else if (score > 59 && score <= 69) {
    print("You scored a B");
  } else if (score >= 50 && score <= 59) {
    print("You scored a C");
  } else if (score > 44 && score < 50) {
    print("You scored a D");
  } else {
    print("You scored an F");
  }
}
