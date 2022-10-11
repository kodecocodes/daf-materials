// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'package:final_project/squares.dart';

void main() {
  whatsAnIterable();
  operationsOnIterables();
  creatingIterablesUsingGenerators();
  creatingIterablesUsingIterators();
}

void whatsAnIterable() {
  final myList = ['bread', 'cheese', 'milk'];
  print(myList);

  for (final item in myList) {
    print(item);
  }

  final reversedIterable = myList.reversed;
  print(reversedIterable);

  final reversedList = reversedIterable.toList();
  print(reversedList);
}

void operationsOnIterables() {
  // final myIterable = Iterable();
  Iterable<String> myIterable = ['red', 'blue', 'green'];

  final thirdElement = myIterable.elementAt(2);
  print(thirdElement);

  final firstElement = myIterable.first;
  final lastElement = myIterable.last;

  print(firstElement);
  print(lastElement);

  final numberElements = myIterable.length;
  print(numberElements);
}

void creatingIterablesUsingGenerators() {
  final squares = hundredSquares();
  for (int square in squares) {
    print(square);
  }
}

Iterable<int> hundredSquares() sync* {
  for (int i = 1; i <= 100; i++) {
    yield i * i;
  }
}

void creatingIterablesUsingIterators() {
  final squares = HundredSquares();
  for (int square in squares) {
    print(square);
  }
}
