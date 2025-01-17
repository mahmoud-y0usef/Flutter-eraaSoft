/*
  Difference Between List.clear() and List = []
  Both List.clear() and List = [] are used to remove elements from a list, but they behave differently in terms of memory usage, references, and scope

  1. List.clear()
  Definition:

  List.clear() is a method that removes all elements from a list.
  Purpose:

  It empties the list without changing the reference to the list object.
  It is useful when you want to reuse the same list object.
  Scope:

  List.clear() affects only the list it is called on.
  Example (Dart):
    List<int> numbers = [1, 2, 3, 4, 5];
  numbers.clear();
  print(numbers); // Output: []


  2. List = []
  Definition:

  List = [] is an assignment that creates a new empty list and assigns it to the variable.
  Purpose:

  It creates a new list object and assigns it to the variable, replacing the previous list.
  It is useful when you want to start with a fresh empty list.
  Scope:

  List = [] affects the variable it is assigned to.
  Example (Dart):
    List<int> numbers = [1, 2, 3, 4, 5];
  numbers = [];
  print(numbers); // Output: []

  Note: When using List.clear(), the reference to the list object remains the same, while List = [] creates a new list object and assigns it to the variable. 


*/