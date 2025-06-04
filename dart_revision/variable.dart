// Object name = 'Bob';
// String name = 'Bob';
//

void main(List<String> args) {
  int? lineCount;
  bool weLikeToCount = true;

  if (weLikeToCount) {
    lineCount = countLines();
  } else {
    lineCount = 0;
  }

}

countLines() {
  for (int i = 0; i <= 10; i++) {
    print(i);
  }
}
