void main(List<String> args) {
  printData(name: "mahmoud", email: "mahmoudyousef59@outlook.com", age: 25);
}

printData({required String name, required String email, required num age}) {
  print(name + " " + email + " $age");
}
