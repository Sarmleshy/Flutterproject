import 'dart:io';
void main() {
  print("Enter your first Number");
  int? number = int.parse(stdin.readLineSync()!);
  print("Enter your second Number");
  int? number2 = int.parse(stdin.readLineSync()!);
  print("Enter your third Number");
  int? number3 = int.parse(stdin.readLineSync()!);
 print("The greatest value is:");

  if(number > number2 && number > number3){
    print(number);
  }
  else if(number2 > number && number2 > number3){
    print(number2);
  }
  else if(number3 > number2 && number3 > number){
    print(number3);
  }
}