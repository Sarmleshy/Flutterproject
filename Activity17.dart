import 'dart:io';

 void main(List<String> args) {
 
 whileLoop();
}


void whileLoop(){
 print("Enter a list of numbers( While loop)");
String? input = stdin.readLineSync()!;
List<String> num = input.split("");
List<int> numbers = num.map(int.parse).toList();

int sum = 0;

  int i = 0;
  while (i < numbers.length) {
    sum += numbers[i];
    i++;
  }
  print("The sum of the numbers is: $sum");
}
