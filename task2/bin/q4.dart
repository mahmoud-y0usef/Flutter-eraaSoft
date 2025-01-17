import 'package:task2/task2.dart';
main() {
  List read = readNumbers(1) , numbers = readNumbers(read[0]);

  print("The positive is ${calcPosNeg(numbers)[0]} and the negative is ${calcPosNeg(numbers)[1]}");
}
