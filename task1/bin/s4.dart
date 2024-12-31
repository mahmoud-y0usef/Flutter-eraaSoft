/*
  Create a program that asks the user to enter their name and their age. 
  Print out a message that tells how many years they have to be 100 years old. 
*/
import 'dart:io';
main(){
  num process;
  stdout.write("Enter Your Name: ");
  String ? name = stdin.readLineSync();
  stdout.write("Enter Your Age: ");
  dynamic ? age = stdin.readLineSync();
  process = 100 - double.parse(age);
  print("hello $name to be a 100 years old is : $process");
}