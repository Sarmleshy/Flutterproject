//Write a program to check if the value of a variable is an even number or odd using tenary operator
import 'dart:io';

void main() {
  stdout.write("Enter your value to check if the value is even or not:  ");
int? number = int.parse(stdin.readLineSync()!);
number%2==0 ? print("The given number is even") : print("The given number is odd");
}