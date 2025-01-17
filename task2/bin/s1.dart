import 'package:task2/task2.dart';

main() {
  defnationClass();
}

defnationClass() {
  
  Person person = Person('Mahmoud Yousef', 25, 181, 70);

  person.introduce();
  person.displayInfo();
  print('BMI: ${person.calculateBMI().toStringAsFixed(2)}');
}
