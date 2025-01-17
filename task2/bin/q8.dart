import 'package:task2/task2.dart';

main() {
  while (true) {
    List password = readStrings(1, "Enter a password", 0);
    bool result = validate(password[0], "2023");

    if (result) {
      print("Accepted!");
      break;
    } else {
      print("Incorrect password");
    }
  }
}
