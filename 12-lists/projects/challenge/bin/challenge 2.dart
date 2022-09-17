// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  basicListOperationsExercise();
  loopingExercise();

  challenge1();
  challenge2();
  challenge3();
}

/// Basic List Operations Exercise
///
/// 1. Create a list of type `String` and name it `months`.
/// 2. Use the `add` method to add the names of the twelve months.
/// 3. Find the index of March in the list.
/// 4. Use the index to remove March.
/// 5. Insert March back in at the correct position.
/// 6. Print the list after each change to ensure your code is correct.
void basicListOperationsExercise() {
  final months = <String>[];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);

  final indexMarch = months.indexOf('March');
  months.removeAt(indexMarch);
  print(months);

  months.insert(indexMarch, 'March');
  print(months);
}

/// Looping Exercise
///
/// Start with the following list of numbers:
///
/// ```
/// const numbers = [1, 2, 4, 7];
/// ```
///
/// Print the square of each number, that is, 1, 4, 16 and 49.
///
/// 1. First use a `for` loop.
/// 2. Solve the problem again using a `for-in` loop.
void loopingExercise() {
  const numbers = [1, 2, 4, 7];

  for (int i = 0; i < numbers.length; i++) {
    final number = numbers[i];
    final squared = number * number;
    print(squared);
  }

  for (int number in numbers) {
    print(number * number);
  }
}

/// Challenge 1: Longest and Shortest
///
/// Given the following list:
///
/// ```
/// const strings = ['cookies', 'ice cream', 'cake', 'donuts', 'pie', 'brownies'];
/// ```
///
/// Find the longest and shortest strings.
void challenge1() {
  const strings = ['cookies', 'ice cream', 'cake', 'donuts', 'pie', 'brownies'];

  String? longest;
  String? shortest;

  var lengthLongest = -1;
  var lengthShortest = 1000000;

  for (final dessert in strings) {
    final length = dessert.length;
    if (length > lengthLongest) {
      longest = dessert;
      lengthLongest = length;
    }
    if (length < lengthShortest) {
      shortest = dessert;
      lengthShortest = length;
    }
  }

  print('Longest: $longest');
  print('Shortest: $shortest');
}

/// Challenge 2: Repetitious Repeats
///
/// How can you tell if a list contains any duplicates?
///
/// Use the following list as an example:
///
/// ```
/// final myList = [1, 4, 2, 7, 3, 4, 9];
/// ```
void challenge2() {
  // There are a few different ways to solve this problem. For example, you
  // could loop through the list once for every element. You could also use
  // a set, which you'll learn about in the next chapter, and check if an
  // element exists in the set. If not, then add it and check the next. The
  // solution below, however, makes use of a simple sort and compare.
  final myList = [1, 4, 2, 7, 3, 4, 9];
  myList.sort();
  int? previous;
  for (final number in myList) {
    if (number == previous) {
      print('$number is a duplicate.');
      return;
    }
    previous = number;
  }
  print('There are no duplicates.');
}

/// Challenge 3: Sorting It All Out
///
/// Write your own algorithm to sort a list of integers without using the
/// `sort` method. If you need some help, do a web search for "bubble sort",
/// and then implement that algorithm in Dart.
void challenge3() {
  final myList = [9, 4, 2, 7, 3, 4, 1];
  for (int i = 0; i < myList.length; i++) {
    for (int j = i + 1; j < myList.length; j++) {
      if (myList[i] > myList[j]) {
        swap(myList, i, j);
        print(myList);
      }
    }
  }
  print(myList);
}

// Swaps the values at `indexA` and `indexB` in `list`.
void swap(List<int> list, int indexA, int indexB) {
  final temp = list[indexA];
  list[indexA] = list[indexB];
  list[indexB] = temp;
}
