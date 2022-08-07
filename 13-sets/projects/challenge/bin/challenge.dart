// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  setOperationsExercise();
  intersectionsAndUnions();

  challenge1();
  challenge2();
}

/// Set Operations Exercise
///
/// 1. Create an empty set of type `String`, and name it `animals`.
/// 2. Add three animals to it.
/// 3. Check if the set contains `'sheep'`.
/// 4. Remove one of the animals.
void setOperationsExercise() {
  final animals = <String>{};

  animals.add('horse');
  animals.add('cow');
  animals.add('camel');
  print(animals);

  final containsSheep = animals.contains('sheep');
  print(containsSheep);

  animals.remove('cow');
  print(animals);
}

/// Intersections and Unions Exercise
///
/// Find the intersection and union of the following three sets:
///
/// ```dart
/// final nullSafe = {'Swift', 'Dart', 'Kotlin'};
/// final pointy = {'Sword', 'Pencil', 'Dart'};
/// final dWords = {'Dart', 'Dragon', 'Double'};
/// ```
void intersectionsAndUnions() {
  final nullSafe = {'Swift', 'Dart', 'Kotlin'};
  final pointy = {'Sword', 'Pencil', 'Dart'};
  final dWords = {'Dart', 'Dragon', 'Double'};

  final intersection = nullSafe.intersection(pointy).intersection(dWords);
  final union = nullSafe.union(pointy).union(dWords);

  print(intersection);
  print(union);
}

/// Challenge 1: A Unique Request
///
/// Write a function that takes a paragraph of text and returns a
/// collection of unique String characters that the text contains.
///
/// Hint: Use `String.fromCharCode` to convert a code point back to a string.
void challenge1() {
  Set<String> uniqueCodePoints(String text) {
    final uniqueCharacters = <String>{};
    for (final codePoint in text.runes) {
      final character = String.fromCharCode(codePoint);
      uniqueCharacters.add(character);
    }
    return uniqueCharacters;
  }

  const paragraphOfText = 'Once upon a time there was a Dart programmer who '
      'had a challenging challenge to solve. Though the challenge was great, '
      'a solution did come. The end.';

  print(uniqueCodePoints(paragraphOfText));
}

/// Challenge 2: Symmetric Difference
///
/// Earlier in the chapter, you found the intersection and the union of the
/// following sets:
///
/// ```dart
/// final setA = {8, 2, 3, 1, 4};
/// final setB = {1, 6, 5, 4};
/// ```
///
/// How would you find the set of all values that are unique to each set,
/// that is, everything but the duplicates `1` and `4`:
///
/// ```text
/// {8, 2, 3, 6, 5}
/// ```
void challenge2() {
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  final intersection = setA.intersection(setB);
  final union = setA.union(setB);

  // Calling `toSet` creates a copy of the set.
  final symmetricDifference = union.toSet();
  for (int element in intersection) {
    symmetricDifference.remove(element);
  }
  print(symmetricDifference);
}
