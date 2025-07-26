import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter a start number: ");

  int i = int.parse(stdin.readLineSync() ?? '0');

  if (i > 0) {
    for (var z = 1; z <= i; z++) {
      print(z);
    }
  }
}
