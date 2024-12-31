// 3. How to get Input from User in the console.
// stdin.readLineSync();

import 'dart:io';

main(){
  stdout.write("Enter Your name: ");
  String ? userName =  stdin.readLineSync();
  print("Hello $userName Welcome!");

}