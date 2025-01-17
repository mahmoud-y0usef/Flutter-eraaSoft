import 'package:task2/task2.dart';

main() {
  List read = readNumbers(1);
  List numbers = readNumbers(read[0]);

 print(ascendingOrDescending(numbers));
}
