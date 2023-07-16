import 'dart:io';

void main() {
  print("What is your name");
  String? name = stdin.readLineSync()!;

  print("How old are you");
  int? dateOfBirth = int.parse(stdin.readLineSync()!);

 print("How much is your Salary");
  double? salary = double.parse(stdin.readLineSync()!);

  print("Are you male or female");
String? gender = stdin.readLineSync()!;

  print("What is your occupation ");
  String? occupation= stdin.readLineSync()!;


devCheck(name, dateOfBirth, salary, gender, occupation);
}

void devCheck( String name, int dateOfBirth, double salary, String gender, String occupation){
  
 if(gender == "male" || gender == "Male" || gender =="MALE") {
    print("His name is $name and he is $dateOfBirth years old. He is a $occupation that earns $salary naira weekly");
  } else if( gender == "female" || gender == "Female" || gender == "FEMALE"){
    print("Her name is $name and she is $dateOfBirth years old. She is a female $occupation that earns $salary naira weekly.");
  } else{
    print("Invalid Gender");
  }
 
}


