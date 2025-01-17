/*
  Difference Between Parameters and Arguments
  In programming, parameters and arguments are closely related terms but serve distinct roles:

  1. Parameters
  Definition:

  Parameters are the variables defined in a function's signature (or declaration) to receive values when the function is called.
  Purpose:

  They act as placeholders or inputs for the function.
  They define the expected data type and number of values the function can accept.
  Scope:

  Parameters exist only within the function.
  Example (Dart):
    void greet(String name) { // `name` is a parameter
    print('Hello, $name!');
  }


  2. Arguments
  Definition:

  Arguments are the actual values passed to a function when it is called.
  Purpose:

  They provide the values to be used by the function.
  They must match the data type and number of parameters defined in the function.
  Scope:

  Arguments exist only when the function is called.
  Example (Dart):
    void greet(String name) {
    print('Hello, $name!');
  }

  greet('Alice'); // `Alice` is an argument
*/