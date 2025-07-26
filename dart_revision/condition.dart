import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter your Height: ");

  double height = double.parse(stdin.readLineSync() ?? "0");

  if (height < 150) {
    print("teh person is dwarf");
  } else if (height >= 150) {
    print("average height");
  } else if (height >= 165) {
    print("taller");
  }
}
