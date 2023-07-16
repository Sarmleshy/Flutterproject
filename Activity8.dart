import 'dart:io';

void main() {
  // Get the current date and time
  DateTime now = DateTime.now();

  // Get the hour of the day
  int hour = now.hour;
  String weather = hour < 12 ? 'A.M' : 'P.M';

  // Format the date and time
   String newTime = '${hour}:${now.minute} ${weather}';
  String newDate = '${now.day}-${now.month}-${now.year}';
 

  // Print the date and time
    print('Time: $newTime');
  print('Date: $newDate');

}