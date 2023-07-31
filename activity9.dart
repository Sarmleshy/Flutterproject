import 'dart:io'; 

void greet(String name){
  print("Hello $name, welcome to Deebug");

}

void main(){
  print("What is your name?");
  String ? name = stdin.readLineSync()!;
  greet(name);
}