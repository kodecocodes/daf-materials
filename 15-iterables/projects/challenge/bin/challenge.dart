// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  exercise();

  challenge1();
  challenge2();
}

/// Exercise: Operations on Iterables
void exercise() {
  // 1. Create a map of key-value pairs.
  const map = {
    'red': 'FF0000',
    'green': '00FF00',
    'blue': '0000FF',
  };

  // 2. Make a variable named `myIterable` and assign it the `keys` of
  //    your map.
  final myIterable = map.keys;

  // 3. Print the third element.
  print(myIterable.elementAt(2));

  // 4. Print the first and last elements.
  print(myIterable.first);
  print(myIterable.last);

  // 5. Print the length of the iterable.
  print(myIterable.length);

  // 6. Loop through the iterable with a `for-in` loop.
  for (final element in myIterable) {
    print(element);
  }
}

/// Challenge 1: Iterating by Hand
///
/// 1. Create a list named `myList` and populate it with four values.
/// 2. Use `myList.iterator` to access the iterator.
/// 3. Manually step through the list using `moveNext`, and print each value
///    using `current`.
void challenge1() {
  const myList = [4, 7, 2, 3];
  final myIterator = myList.iterator;

  print(myIterator.moveNext());
  print(myIterator.current);

  print(myIterator.moveNext());
  print(myIterator.current);

  print(myIterator.moveNext());
  print(myIterator.current);

  print(myIterator.moveNext());
  print(myIterator.current);

  print(myIterator.moveNext());
}

/// Challenge 2: Fibonacci to Infinity
///
/// Create a custom iterable collection that contains all of the
/// Fibonacci numbers. Add an optional constructor parameter that
/// will stop iteration after the nth number.
void challenge2() {
  final fibonacciSeries = Fibonacci(10);
  for (int number in fibonacciSeries) {
    print(number);
  }
}

class Fibonacci extends Iterable<int> {
  const Fibonacci([this.n]);
  final int? n;

  @override
  Iterator<int> get iterator => FibonacciIterator(n);
}

class FibonacciIterator implements Iterator<int> {
  FibonacciIterator(this.n);
  final int? n;

  @override
  get current => _current;

  var _current = 0;
  var _previous = 1;
  var _count = 0;

  @override
  bool moveNext() {
    final next = _current + _previous;
    _previous = _current;
    _current = next;
    _count++;

    if (n == null) {
      return true;
    }
    return _count <= n!;
  }
}
