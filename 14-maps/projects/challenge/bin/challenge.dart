// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:convert';

void main() {
  mapsExercise();
  challenge1();
  challenge2();
}

/// Maps Exercise
///
/// 1. Create a map with the following keys: `name`, `profession`, `country`
///    and `city`. For the values, add your information.
/// 2. You decide to move to Toronto, Canada. Programmatically update
///    the values for `country` and `city`.
/// 3. Iterate over the map and print all the values.
void mapsExercise() {
  final myMap = {
    'name': 'Li Ming',
    'profession': 'software engineer',
    'country': 'China',
    'city': 'Beijing',
  };
  print(myMap);

  myMap['country'] = 'Canada';
  myMap['city'] = 'Toronto';
  print(myMap);

  for (var value in myMap.values) {
    print(value);
  }
}

/// Challenge 1: Counting on You
///
/// Write a function that takes a paragraph of text as a parameter. Count
/// the frequency of each character. Return this data as a map where the
/// key is the character and the value is the frequency count.
void challenge1() {
  const paragraphOfText = 'Once upon a time there was a Dart programmer who '
      'had a challenging challenge to solve. Though the challenge was great, '
      'a solution did come. The end.';

  print(characterFrequencyMap(paragraphOfText));
}

Map<String, int> characterFrequencyMap(String text) {
  final characterFrequencyMap = <String, int>{};
  for (var codePoint in text.runes) {
    final character = String.fromCharCode(codePoint);
    final frequency = characterFrequencyMap[character] ?? 0;
    characterFrequencyMap[character] = frequency + 1;
  }
  return characterFrequencyMap;
}

/// Challenge 2: To JSON and Back
///
/// Create an object from the following class:
///
/// ```dart
/// class Widget {
///   Widget(this.width, this.height);
///   final double width;
///   final double height;
/// }
/// ```
///
/// Then:
///
/// 1. Add a `toJson` method to `Widget`. It should return a map.
/// 2. Use `toJson` to convert your object to a map.
/// 3. Convert the map to a JSON string.
/// 4. Convert the JSON string back to a map.
/// 5. Add a `fromJson` factory constructor to `Widget`.
/// 6. Use `fromJson` to convert the map back to a widget object.
void challenge2() {
  final myWidget = Widget(3, 4);
  final myMapFromWidget = myWidget.toJson();

  // Remember to import 'dart:convert'.
  final myJsonString = jsonEncode(myMapFromWidget);
  print(myJsonString);

  dynamic myMapFromJson = jsonDecode(myJsonString);
  final myWidgetFromMap = Widget.fromJson(myMapFromJson);

  print(myWidget.width == myWidgetFromMap.width);
  print(myWidget.height == myWidgetFromMap.height);
}

class Widget {
  Widget(this.width, this.height);
  final double width;
  final double height;

  factory Widget.fromJson(Map<String, dynamic> jsonMap) {
    dynamic width = jsonMap['width'];
    dynamic height = jsonMap['height'];
    if (width is! double) width = 0;
    if (height is! double) height = 0;
    return Widget(width, height);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'width': width,
      'height': height,
    };
  }
}
