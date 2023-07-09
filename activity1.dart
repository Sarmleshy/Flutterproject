 import 'dart:io';
void main() {
  stdout.write("Enter your value to check if the value is even or not:  ");
int? number = int.parse(stdin.readLineSync()!);
number%2==0 ? print("The given number is even") : print("The given number is not even");

if(number%2==0){
  print("The given number is even");

} else{
  print("The given number is odd");
}

}