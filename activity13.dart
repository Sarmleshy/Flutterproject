import 'dart:math';
import 'dart:io';

void guessGame(int guessedNumber) {
  Random random = Random();
  int random_number = random.nextInt(11); 

  if (guessedNumber < random_number) {
    print("Your guess is too low");
  } else if (guessedNumber > random_number) {
    print("Your guess is too high");
  } else {
    print("Congratulations Your guess is correct");
  }
}

void main() {
  stdout.write("Guess a number between 0 and 10: ");
  String userInput = stdin.readLineSync()!;
  int? userGuess = int.tryParse(userInput);

  if (userGuess == null) {
    print("Invalid input. Please enter a valid number.");
  } else {
    guessGame(userGuess);
  }
}
