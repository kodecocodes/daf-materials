// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  assigningValuesAndPrinting();
  addingMethods();
  cascadeNotation();
  objectsAsReferences();
  getters();
  calculatedProperty();
  setters();
}

class User {
  int id = 0;
  String name = '';

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}

void assigningValuesAndPrinting() {
  final user = User();
  user.name = 'Ray';
  user.id = 42;

  print(user);
}

void addingMethods() {
  final user = User();
  user.name = 'Ray';
  user.id = 42;

  print(user.toJson());
}

void cascadeNotation() {
  final user = User()
    ..name = 'Ray'
    ..id = 42;
  print(user);
}

class MyClass {
  var myProperty = 1;
}

void objectsAsReferences() {
  final myObject = MyClass();
  final anotherObject = myObject;
  print(myObject.myProperty);
  anotherObject.myProperty = 2;
  print(myObject.myProperty);
}

class Password {
  String _plainText = 'pass123';

  String get plainText => _plainText;

  set plainText(String text) {
    if (text.length < 6) {
      print('Passwords must have 6 or more characters!');
      return;
    }
    _plainText = text;
  }

  String get obfuscated {
    final length = _plainText.length;
    return '*' * length;
  }
}

void getters() {
  final myPassword = Password();
  final text = myPassword.plainText;
  print(text);

  // myPassword.plainText = '123456';
}

void calculatedProperty() {
  final myPassword = Password();
  final text = myPassword.obfuscated;
  print(text);
}

void setters() {
  final myPassword = Password();
  myPassword.plainText = r'Pa$$vv0Rd';
  final text = myPassword.plainText;
  print(text);

  final shortPassword = Password();
  shortPassword.plainText = 'aaa';
  final result = shortPassword.plainText;
  print(result);

  final email = Email();
  email.value = 'ray@example.com';
  final emailString = email.value;
  print(emailString);
}

// class Email {
//   String _value = '';
//   String get value => _value;
//   set value(String value) => _value = value;
// }

class Email {
  String value = '';
}
