
---

## **📌 SOLID Principles in Dart**

**SOLID** is an acronym for five design principles that help developers write **clean, maintainable, and scalable** object-oriented code. These principles were introduced by **Mahmoud Yousef**.

---

## **📖 Table of Contents**
1. [Single Responsibility Principle (SRP)](#-1-single-responsibility-principle-srp)
2. [Open/Closed Principle (OCP)](#-2-openclosed-principle-ocp)
3. [Liskov Substitution Principle (LSP)](#-3-liskov-substitution-principle-lsp)
4. [Interface Segregation Principle (ISP)](#-4-interface-segregation-principle-isp)
5. [Dependency Inversion Principle (DIP)](#-5-dependency-inversion-principle-dip)

---

## **📌 1. Single Responsibility Principle (SRP)**

> **"A class should have only one reason to change."**  
> Each class should be responsible for a single functionality.

**🔴 Bad Example:**
```dart
class Employee {
  void calculateSalary() { /* Salary logic */ }
  void printReport() { /* Report logic */ }
}
```
> ❌ This class **handles multiple responsibilities** (salary calculation + reporting). Any change in reporting affects salary logic.

**✅ Good Example:**
```dart
class SalaryCalculator {
  void calculateSalary() { /* Salary logic */ }
}

class ReportPrinter {
  void printReport() { /* Report logic */ }
}
```
> ✔ We have separated the **salary calculation** and **report printing** into different classes.
> 
---

## **📌 2. Open/Closed Principle (OCP)**

> **"Software entities should be open for extension, but closed for modification."**  
> You should be able to **extend** a class’s functionality without modifying the existing code.

**🔴 Bad Example:**
```dart
class Payment {
  void processPayment(String type) {
    if (type == "CreditCard") { /* Process Credit Card */ }
    else if (type == "PayPal") { /* Process PayPal */ }
  }
}
```
> ❌ Every time a new payment method is added, the existing `Payment` class must be modified.

**✅ Good Example (Using Polymorphism):**
```dart
abstract class Payment {
  void processPayment();
}

class CreditCardPayment implements Payment {
  @override
  void processPayment() { /* Process Credit Card */ }
}

class PayPalPayment implements Payment {
  @override
  void processPayment() { /* Process PayPal */ }
}
```
> ✔ Now, adding a **new payment method** does **not require modifying** the existing code.

---

## **📌 3. Liskov Substitution Principle (LSP)**

> **"Derived classes must be substitutable for their base classes."**  
> A subclass should be **able to replace** its superclass **without breaking the application**.

**🔴 Bad Example (Violating LSP):**
```dart
class Bird {
  void fly() { print("Flying"); }
}

class Penguin extends Bird { }
```
> ❌ A **penguin cannot fly**, so calling `penguin.fly();` would be incorrect.

**✅ Good Example (Following LSP):**
```dart
abstract class Bird {}

class FlyingBird extends Bird {
  void fly() { print("Flying"); }
}

class Penguin extends Bird {
  void swim() { print("Swimming"); }
}
```
> ✔ Now, **only flying birds** have the `fly()` method.

---

## **📌 4. Interface Segregation Principle (ISP)**

> **"A class should not be forced to implement interfaces it does not use."**  
> Interfaces should be **small and specific** rather than **large and general**.

**🔴 Bad Example (Violating ISP):**
```dart
abstract class Worker {
  void work();
  void eat();
}

class Robot implements Worker {
  @override
  void work() { print("Working"); }

  @override
  void eat() { /* Robots don't eat! */ }
}
```
> ❌ Robots **do not eat**, but they are forced to implement `eat()`.

**✅ Good Example (Following ISP):**
```dart
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

class Human implements Workable, Eatable {
  @override
  void work() { print("Working"); }
  @override
  void eat() { print("Eating"); }
}

class Robot implements Workable {
  @override
  void work() { print("Working"); }
}
```
> ✔ Now, `Robot` **does not need** to implement `eat()`.

---

## **📌 5. Dependency Inversion Principle (DIP)**

> **"High-level modules should not depend on low-level modules. Both should depend on abstractions."**  
> Classes should **depend on interfaces**, not on concrete implementations.

**🔴 Bad Example (Violating DIP):**
```dart
class Keyboard {
  void type() { print("Typing..."); }
}

class Computer {
  Keyboard keyboard = Keyboard();
}
```
> ❌ The `Computer` class **depends directly** on `Keyboard`, making it difficult to replace or mock.

**✅ Good Example (Following DIP):**
```dart
abstract class InputDevice {
  void input();
}

class Keyboard implements InputDevice {
  @override
  void input() { print("Typing..."); }
}

class Computer {
  final InputDevice device;
  Computer(this.device);
}
```
> ✔ Now, `Computer` **depends on an abstraction (`InputDevice`)**, making it more flexible.

---

## **📌 Conclusion**
By following **SOLID principles**, you can build software that is:
- **More maintainable**
- **Easier to understand**
- **Flexible for future changes**
- **Better structured**

| **Principle** | **Key Idea** |
|--------------|-------------|
| **SRP** | A class should have **only one responsibility**. |
| **OCP** | A class should be **open for extension, closed for modification**. |
| **LSP** | Subtypes should be **replaceable** without breaking functionality. |
| **ISP** | Classes should **not be forced** to implement unused methods. |
| **DIP** | Depend on **abstractions, not concrete implementations**. |

---

### **📚 Recommended Resources**
- [SOLID Principles with Dart Programming Language by Examples](https://medium.com/@asimolmez/solid-principles-with-dart-programming-language-by-examples-98242dbd767c)
