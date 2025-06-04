import 'dart:ffi';

void main(List<String> args) {
  print(sum([1, 2.4, 2.8, 10]));

  print(sum2([1, 2, 4]));
}

sum(List<num> numbers) {
  num sum = 0;

  for (num i in numbers) {
    sum += i;
  }
  return sum;
}

sum2(Iterable<num> args) {
  num sum = 0;
  for (num i in args) {
    sum += i;
  }
  return sum;
}
