import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter a number of the day: ");
  int n = int.parse(stdin.readLineSync() ?? "0");
  switch (n) {
    case 1:
      print("Saturday");
      break;
    case 2:
      print("Sunday");
      break;
    case 3:
      print("Monday");
      break;
    case 4:
      print("Tuesday");
      break;
    case 5:
      print("Wednesday");
      break;
    case 6:
      print("Thursday");
      break;
    case 7:
      print("Friday");
      break;
    default:
      print("Invalid day number");
  }
}
