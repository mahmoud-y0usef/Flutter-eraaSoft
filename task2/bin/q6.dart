import 'package:task2/task2.dart';
main(){
    List numbers = readNumbers(2);
    print("The sum of even numbers between ${numbers[0]} and ${numbers[1]} is ${sumBvalues(numbers[0] , numbers[1])}");
}