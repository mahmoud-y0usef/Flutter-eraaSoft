import 'package:task2/task2.dart';
main(){
  List numbers = readNumbers(5);
  print("The even is ${evenOdd(numbers)[0]} and the odd is ${evenOdd(numbers)[1]}");
}