import "dart:io";

main() {
  stdout.write("Enter The Number: ");
  int number = int.parse(stdin.readLineSync() ?? "0");
  for (int n = 1 ; n <= number ; n++){
    print(n);
  }
}
