// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  constructorsExercise();
  challenge1();
}

/// Constructors Exercise
///
/// Given the following class:
///
/// ```
/// class PhoneNumber {
///   String value = '';
/// }
/// ```
///
/// 1. Make `value` a `final` variable, but not private.
/// 2. Add a `const` constructor as the only way to initialize a
/// `PhoneNumber` object.
void constructorsExercise() {
  final number = PhoneNumber('555-2121');
  print(number.value);
}

class PhoneNumber {
  const PhoneNumber(this.value);
  final String value;
}

/// Challenge 1: Bert and Ernie
///
/// Create a `Student` class with final `firstName` and `lastName`
/// string properties and a variable `grade` as an `int` property.
/// Add a constructor to the class that initializes all the properties.
/// Add a method to the class that nicely formats a `Student` for printing.
/// Use the class to create students `bert` and `ernie` with grades of 95 and
/// 85, respectively.
void challenge1() {
  final ernie = Student('Ernie', 'Henson', 95);
  final bert = Student('Bert', 'Oz', 85);
  print('$ernie\n$bert');
}

class Student {
  Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  int grade;

  @override
  String toString() => '$firstName $lastName: $grade';
}
