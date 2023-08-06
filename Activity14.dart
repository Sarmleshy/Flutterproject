import 'dart:io';

void main() {
  print(" Enter year");
  int? year = int.parse(stdin.readLineSync()!);
  int currentYear = 2022;
  int result = year - currentYear;

  if (year < 2022){
    print("You must have graduated already");
  } 
  else if(year == 2022){
    print("You will graduate this year");
  }else if ( year > 2022){
    print( " You will graduate in $result years time ");
  }
}