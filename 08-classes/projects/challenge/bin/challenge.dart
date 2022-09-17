// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  challenge1();
}

/// Challenge 1: Rectangles
///
/// - Create a class named `Rectangle` with properties for `_width` and
///   `_height`.
/// - Add getters named `width` and `height`.
/// - Add setters for these properties that ensure you can't give negative
///   values.
/// - Add a getter for a calculated property named `area` that returns the area
///   of the rectangle.
void challenge1() {
  final rectangle = Rectangle()
    ..width = 2.3
    ..height = 4.0;
  print('width: ${rectangle.width}');
  print('height: ${rectangle.height}');
  print('area: ${rectangle.area}');
}

class Rectangle {
  double _width = 0;
  double _height = 0;

  double get width => _width;
  set width(double value) {
    if (value < 0) {
      print('width must be positive!');
    } else {
      _width = value;
    }
  }

  double get height => _height;
  set height(double value) {
    if (value < 0) {
      print('height must be positive!');
    } else {
      _height = value;
    }
  }

  double get area => _width * _height;
}
