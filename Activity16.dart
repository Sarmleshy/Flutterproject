import 'dart:io';
 void main(List<String> args) {
  print(" Enter a number");
  int ? n = int.parse(stdin.readLineSync()!);
 
 
  int sum = 0;

  int i = 0;
  while (i < n) {
    sum += i;
    i++;
      print('Sum of numbers from 1 to $n: $sum');
}

  }


