void main(List<String> args) {
  List<dynamic> list = [1, 2, 3, 5, 6];

  for (int i in list) {
    print(i);
  }
  print("\n\n");
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print("\n\n");
  list.forEach(print);
}
