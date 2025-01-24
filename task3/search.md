## Arrow Functions in Dart

Arrow functions in Dart are a concise way to write functions that contain a single expression. Instead of using the full function syntax, you can use the `=>` symbol to simplify your code and make it more readable.

### Explanation
Arrow functions هي طريقة مختصرة لكتابة الدوال اللي بتعمل حاجة واحدة بس. بدل ما تكتب دالة كاملة بأقواس و `return`، ممكن تكتبها بسطر واحد باستخدام السهم `=>`. الكود يبقى أنظف وأوضح.

---

### **Example 1: Function to Calculate the Square of a Number**
```dart
int square(int number) => number * number;

void main() {
  print(square(4)); // Output: 16
}
```
#### Explanation:
- The `square` function takes a number and returns its square.
- Instead of writing:
  ```dart
  int square(int number) {
    return number * number;
  }
  ```
  We wrote it in one line.

---

### **Example 2: Function to Return a Greeting Message**
```dart
String greet(String name) => 'Hello, $name!';

void main() {
  print(greet('Ahmed')); // Output: Hello, Ahmed!
}
```
#### Explanation:
- The `greet` function takes a name and returns a greeting message.
- No need for braces or `return`, the arrow does it all.

---

### **Example 3: Using Arrow Functions with a List**
```dart
void main() {
  List<int> numbers = [1, 2, 3, 4];
  List<int> squares = numbers.map((num) => num * num).toList();
  print(squares); // Output: [1, 4, 9, 16]
}
```
#### Explanation:
- Here we used `map` with an arrow function to transform each number in the `numbers` list to its square.
- If written in the long form, it would have been more complex.

---

### **Example 4: Function Without a Return Value**
```dart
void printHello() => print('Hello, World!');

void main() {
  printHello(); // Output: Hello, World!
}
```
#### Explanation:
- The `printHello` function doesn’t return anything. It simply prints a message.
- Arrow functions can also be used for void functions.

---

### Notes:
1. **Arrow functions are only suitable for single-expression functions.** If the function has multiple steps, you need to use the full function syntax.
2. **They make the code more concise and readable, especially for simple operations.**

---

If you have any questions or need further clarification, feel free to ask! ☺

