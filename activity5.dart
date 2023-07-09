import 'dart:io';
void  main() {
  print("Enter your value");
  int? number = int.parse(stdin.readLineSync()!);

  if(number < 0){
    print("$number is Negative");
  } else{
    print("$number is Positive");
  }
}