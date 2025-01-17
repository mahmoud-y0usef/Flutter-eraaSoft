import 'package:task2/task2.dart';
main(){
  List days = readNumbers(1);
  List result = dtoymd(days[0]);
  print("years: ${result[0]}, months: ${result[1]}, days: ${result[2]}");
}