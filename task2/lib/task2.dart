import 'dart:io';

/// Reads a list of integers from the user.
///
/// This function prompts the user to enter a number [x] times.
/// It then reads the numbers entered by the user and returns them as a list.
///
/// - [x]: The number of times the user will be prompted to enter a number.
///
/// Example:
/// ```dart
/// List<int> numbers = readNumbers(3);
/// print(numbers); // Output: [1, 2, 3] (based on user input)
/// ```
List<int> readNumbers(int x) {
  List<int> numbers = [];
  for (int i = 0; i < x; i++) {
    stdout.write('Enter number ${i + 1}: ');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  return numbers;
}

/// Reads a list of strings from the user.
///
/// This function prompts the user to enter a string [x] times.
/// It then reads the strings entered by the user and returns them as a list.
///
/// - [x]: The number of times the user will be prompted to enter a string.
/// - [prompt]: The prompt message to display to the user.
/// - [display]: If 0, the index of the string will not be displayed in the prompt message.
/// Example:
/// ```dart
/// List<String> strings = readStrings(3, 'Enter name' , 0);
/// print(strings); // Output: ['Alice', 'Bob', 'Charlie'] (based on user input)
/// ```
List<String> readStrings(int x, String prompt, int display) {
  List<String> strings = [];
  for (int i = 0; i < x; i++) {
    stdout.write('$prompt ${display == 0 ? '' : i + 1}: ');
    String string = stdin.readLineSync()!;
    strings.add(string);
  }
  return strings;
}

/// Calculates the area of a circle.
///
/// This function takes a number [r] as an argument and returns the area of a circle with radius [r].
/// The function calculates the area of the circle using the formula: πr².
///
/// - [r]: The radius of the circle.
///
/// Example:
/// ```dart
/// num area = circleArea(5);
/// print(area); // Output: 78.53975
/// ```
area(num r) {
  num pi = 3.14159;
  num area = pi * r * r;
  return area;
}

/// Calculates the greatest of two numbers.
///
/// This function takes two numbers [a] and [b] as arguments and returns the greatest of the two numbers.
/// The function calculates the greatest of the two numbers using the formula: (a + b + |a - b|) / 2.
/// The function then returns the greatest of the two numbers.
///
/// - [a]: The first number.
/// - [b]: The second number.
///
/// Example:
/// ```dart
/// int greatestNumber = greatest(5, 10);
/// print(greatestNumber); // Output: 10
/// ```
greatest(int a, int b) {
  return (a + b + (a - b).abs()) / 2;
}

/// Calculates the greatest of three numbers.
///
/// This function takes three numbers [a], [b], and [c] as arguments and returns the greatest of the three numbers.
/// The function calculates the greatest of the three numbers using the formula: max(a, max(b, c)).
/// The function then returns the greatest of the three numbers.
///
/// - [a]: The first number.
/// - [b]: The second number.
/// - [c]: The third number.
///
/// Example:
/// ```dart
/// int greatestNumber = bigNum(5, 10, 15);
/// print(greatestNumber); // Output: 15
/// ```
bigNum(int a, int b, int c) {
  if (a > b && a > c) {
    return a;
  } else if (b > a && b > c) {
    return b;
  } else {
    return c;
  }
}

/// Calculates the number of positive and negative numbers in a list.
///
/// This function takes a list of numbers as an argument and returns a list containing the number of positive and negative numbers in the input list.
/// The function iterates through the input list and counts the number of positive and negative numbers.
/// The function then returns a list containing the count of positive and negative numbers.
///
/// - [numbers]: The list of numbers.
///
/// Example:
/// ```dart
/// List<int> numbers = [1, -2, 3, -4, 5];
/// List<int> counts = calcPosNeg(numbers);
/// print(counts); // Output: [3, 2]
/// ```
calcPosNeg(List numbers) {
  int pos = 0;
  int neg = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > 0) {
      pos++;
    } else if (numbers[i] < 0) {
      neg++;
    }
  }
  return [pos, neg];
}

/// Calculates the number of even and odd numbers in a list.
///
/// This function takes a list of numbers as an argument and returns a list containing the number of even and odd numbers in the input list.
/// The function iterates through the input list and counts the number of even and odd numbers.
/// The function then returns a list containing the count of even and odd numbers.
///
/// - [numbers]: The list of numbers.
///
/// Example:
/// ```dart
/// List<int> numbers = [1, 2, 3, 4, 5];
/// List<int> counts = evenOdd(numbers);
/// print(counts); // Output: [2, 3]
/// ```
evenOdd(List numbers) {
  int even = 0;
  int odd = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  return [even, odd];
}

/// Calculates the sum of all even numbers between two values.
///
/// This function takes two numbers [x] and [y] as arguments and returns the sum of all even numbers between [x] and [y].
/// The function iterates through the range of numbers between [x] and [y] (inclusive) and calculates the sum of all even numbers.
/// The function then returns the sum of all even numbers between [x] and [y].
///
/// - [x]: The lower bound of the range.
/// - [y]: The upper bound of the range.
///
/// Example:
/// ```dart
/// int sum = sumBvalues(1, 10);
/// print(sum); // Output: 30
/// ```
sumBvalues(int x, int y) {
  int sum = 0;
  for (int i = x; i <= y; i++) {
    if (i % 2 == 0) {
      sum += i;
    }
  }
  return sum;
}

///  Multiplies a number by the numbers from 1 to 12.
///
/// this function takes a number [x] as an argument and prints the multiplication table of [x] from 1 to 12.
/// The function iterates from 1 to 12 and prints the multiplication of [x] with each number.
///
/// - [x]: The number to be multiplied.
///
/// Example:
/// ```dart
/// multiplication(5);
/// // Output:
/// // 5 * 1 = 5
/// // 5 * 2 = 10
/// // 5 * 3 = 15
/// // 5 * 4 = 20
/// // 5 * 5 = 25
/// // 5 * 6 = 30
/// // 5 * 7 = 35
/// // 5 * 8 = 40
/// // 5 * 9 = 45
/// // 5 * 10 = 50
/// // 5 * 11 = 55
/// // 5 * 12 = 60
/// ```
multiplication(int x) {
  for (int i = 1; i <= 12; i++) {
    print("$x * $i = ${x * i}");
  }
}

/// Checks if the value of a parameter is equal to a given value.
///
/// This function takes two strings [param] and [value] as arguments and returns true if the value of [param] is equal to [value], otherwise it returns false.
///
/// - [param]: The parameter to be checked.
/// - [value]: The value to be compared with the parameter.
///
/// Example:
/// ```dart
/// bool result = validate('hello', 'hello');
/// print(result); // Output: true
/// ```
validate(String param, String value) {
  if (param == value) {
    return true;
  } else {
    return false;
  }
}


/// Determines whether a list of integers is in ascending, descending, or unordered.
///
/// This function takes a list of integers and checks if the sequence
/// is strictly ascending, strictly descending, all equal, or neither.
///
/// - **Ascending:** All numbers are in increasing order.
/// - **Descending:** All numbers are in decreasing order.
/// - **All numbers are equal:** All elements in the list have the same value.
/// - **Neither:** The list does not follow ascending or descending order.
///
/// ### Parameters
/// - `numbers`: A list of integers to check.
///
/// ### Returns
/// A string indicating the order of the list:
/// - `'Ascending'`
/// - `'Descending'`
/// - `'All numbers are equal'`
/// - `'Neither Ascending nor Descending'`
///
/// ### Example
/// ```dart
/// print(ascendingOrDescending([1, 2, 3])); // Output: Ascending
/// print(ascendingOrDescending([3, 2, 1])); // Output: Descending
/// print(ascendingOrDescending([5, 5, 5])); // Output: All numbers are equal
/// print(ascendingOrDescending([1, 3, 2])); // Output: Neither Ascending nor Descending
/// ```
String ascendingOrDescending(List numbers) {
  if (numbers.isEmpty || numbers.length == 1) {
    return 'List is too short to determine order.';
  }

  bool ascending = true;
  bool descending = true;
  bool allEqual = true;

  for (int i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] < numbers[i + 1]) {
      descending = false; 
      allEqual = false;   
    } else if (numbers[i] > numbers[i + 1]) {
      ascending = false;  
      allEqual = false;   
    } else {
      allEqual &= numbers[i] == numbers[i + 1]; 
    }
  }

  if (allEqual) {
    return 'All numbers are equal';
  } else if (ascending) {
    return 'Ascending';
  } else if (descending) {
    return 'Descending';
  } else {
    return 'Neither Ascending nor Descending';
  }
}

/// Prints the Pum sequence.
/// 
/// This function takes an integer [x] as an argument and prints the Pum sequence.
/// The Pum sequence is a sequence of three numbers starting from [x] and ending at [x + 2] followed by the word 'pum'.
/// The function prints the Pum sequence [x] times.
/// 
/// - [x]: The number to start the Pum sequence from.
/// 
/// Example:
/// ```dart
/// pum(3);
/// // Output:
/// // 3 4 5 pum
/// // 4 5 6 pum
/// // 5 6 7 pum
/// ```
pum(int x) {
  for (int i = 0; i < x; i++) {
    int start = i;
    print('${start} ${start + 1} ${start + 2} pum');
  }
}


/// Calculates the sum of a list of numbers.
/// 
/// This function takes a list of numbers as an argument and returns the sum of all the numbers in the list.
/// The function iterates through the list and calculates the sum of all the numbers.
/// The function then returns the sum of all the numbers in the list.
/// 
/// - [numbers]: The list of numbers.
///   
/// Example:
/// ```dart
/// List<int> numbers = [1, 2, 3, 4, 5];
/// int sum = calculateSum(numbers);
/// print(sum); // Output: 15
/// ```
sum(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum;
}


/// Stores and prints data from a map.
///
/// This function takes a map of key-value pairs and iterates over it.
/// Each key-value pair is printed in the format `key: value`.
///
/// ### Parameters
/// - `data`: A `Map<String, dynamic>` containing the data to be stored and printed.
///   - The `String` represents the key.
///   - The `dynamic` type allows values to be of any type.
///
/// ### Example
/// ```dart
/// Map<String, dynamic> userDetails = {
///   'Name': 'John Doe',
///   'Age': 25,
///   'Phone': '+1234567890',
///   'Details': 'Software Developer'
/// };
///
/// storeData(userDetails);
/// // Output:
/// // Name: John Doe
/// // Age: 25
/// // Phone: +1234567890
/// // Details: Software Developer
/// ```
storeData(Map<String, dynamic> data) {
  data.forEach((key, value) {
    print('$key: $value');
  });
}


/// A class represents a blueprint for creating objects in Dart.
///
/// ### What is a Class?
/// A class in Dart is a blueprint or template used to define properties (variables)
/// and methods (functions) that an object can have. It enables object-oriented programming (OOP),
/// allowing for code reuse, encapsulation, and inheritance.
///
/// ### Key Features:
/// 1. **Properties**: Variables that store data for an object.
/// 2. **Methods**: Functions that define behavior or actions for an object.
/// 3. **Constructor**: A special method to initialize an object when it is created.
/// 4. **Objects**: Instances of a class.
///
/// ### Syntax of a Class:
/// ```dart
/// class ClassName {
///   // Properties
///   String? property1;
///   int property2 = 0;
///
///   // Constructor
///   ClassName(this.property1, this.property2);
///
///   // Methods
///   void displayInfo() {
///     print('Property1: $property1, Property2: $property2');
///   }
/// }
/// ```
///
/// ### Example:
/// ```dart
/// class Person {
///   // Properties
///   String name;
///   int age;
///
///   // Constructor
///   Person(this.name, this.age);
///
///   // Method
///   void introduce() {
///     print('Hi, I am $name and I am $age years old.');
///   }
/// }
///
/// void main() {
///   // Create an object of the Person class
///   Person person1 = Person('John Doe', 25);
///
///   // Access properties
///   print('Name: ${person1.name}');
///   print('Age: ${person1.age}');
///
///   // Call the method
///   person1.introduce();
/// }
/// ```
///
/// ### Output:
/// ```
/// Name: John Doe
/// Age: 25
/// Hi, I am John Doe and I am 25 years old.
/// ```
///
/// ### Why Use Classes?
/// - **Code Reusability**: Classes allow you to create multiple objects with shared properties and methods.
/// - **Encapsulation**: Groups related data and behavior together.
/// - **Inheritance**: Enables sharing of properties and methods between classes.
/// - **Polymorphism**: Allows overriding methods for specific behavior in derived classes.
///
/// Use classes in Dart to write clean, reusable, and maintainable code.
class Person {
  
  String name;
  int age;
  double height;
  double weight; 

  
  Person(this.name, this.age, this.height, this.weight);

  void introduce() {
    print('Hi, I am $name and I am $age years old.');
  }

  
  void displayInfo() {
    print('Name: $name, Age: $age, Height: $height cm, Weight: $weight kg');
  }

  
  double calculateBMI() {
    return weight / ((height / 100) * (height / 100));
  }
}


/// this function takes a seconds as an argument and returns the duration in hours, minutes, and seconds.
/// 
/// - [seconds]: The duration in seconds.
/// 
/// Example:
/// ```dart
/// List<int> result = duration(3661);
/// print(result); // Output: [1, 1, 1]
/// ```
duration(int seconds) {
  int hours = seconds ~/ 3600;
  int minutes = (seconds % 3600) ~/ 60;
  int remainingSeconds = seconds % 60;
  return [hours, minutes, remainingSeconds];
}


dtoymd(int days) {
  int years = days ~/ 365;
  int remainingDays = days % 365;
  int months = remainingDays ~/ 30;
  int remainingDays2 = remainingDays % 30;
  return [years, months, remainingDays2];
}