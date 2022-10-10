// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'package:final_project/math.dart' as math;

void main() {
  introduction();
  constants();
  singletons();
  staticMethods();
  creatingNewObjects();
}

void introduction() {
  final value = SomeClass.myProperty;
  SomeClass.myMethod();
}

class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print('Hello, Dart!');
  }
}

class TextStyle {
  static const _defaultFontSize = 17.0;

  TextStyle({this.fontSize = _defaultFontSize});
  final double fontSize;
}

class Colors {
  static const int red = 0xFFD13F13;
  static const int purple = 0xFF8107D9;
  static const int blue = 0xFF1432C9;
}

void constants() {
  final backgroundColor = Colors.purple;
  print(backgroundColor);
}

// class MySingleton {
//   MySingleton._();
//   static final MySingleton instance = MySingleton._();
// }

class MySingleton {
  MySingleton._();
  static final MySingleton _instance = MySingleton._();
  factory MySingleton() => _instance;
}

void singletons() {
  // final mySingleton = MySingleton.instance;
  final mySingleton = MySingleton();
  print(mySingleton);
}

class Math {
  static num max(num a, num b) {
    return (a > b) ? a : b;
  }

  static num min(num a, num b) {
    return (a < b) ? a : b;
  }
}

void staticMethods() {
  print(Math.max(2, 3));
  print(Math.min(2, 3));

  // print(max(2, 3));
  // print(min(2, 3));

  print(math.max(2, 3));
  print(math.min(2, 3));
}

class User {
  const User({int id = 0, String name = 'anonymous'})
      : _id = id,
        _name = name;

  const User.anonymous() : this();

  // factory User.fromJson(Map<String, Object> json) {
  //   final userId = json['id'] as int;
  //   final userName = json['name'] as String;
  //   return User(id: userId, name: userName);
  // }

  static User fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  final String _name;
  final int _id;

  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}

void creatingNewObjects() {
  final map = {'id': 10, 'name': 'Sandra'};
  final sandra = User.fromJson(map);
  print(sandra);
}
