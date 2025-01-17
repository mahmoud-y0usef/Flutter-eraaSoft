import 'package:task2/task2.dart';

main() {
  List seconds = readNumbers(1);
  List result = duration(seconds[0]);
  print("Duration: ${result[0]}:${result[1]}:${result[2]}");
}
