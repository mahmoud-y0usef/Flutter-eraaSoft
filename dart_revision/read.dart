import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter a number1: ");
  int? n1 = int.parse(stdin.readLineSync() ?? '');
  stdout.write("Enter a second number2: ");
  int? n2 = int.parse(stdin.readLineSync() ?? '');

  print(sum([n1 , n2]));
}

sum(List<num> args) {
  num sum = 0;
  for (num i in args) {
    sum += i;
  }

  return sum;
}
