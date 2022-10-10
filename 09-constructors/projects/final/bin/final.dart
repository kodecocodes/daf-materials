// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'package:final_project/user.dart';

void main() {
  defaultConstructor();
  longFormConstructor();
  shortFormConstructor();
  namedConstructors();
  forwardingConstructors();
  optionalAndNamedParameters();
  initializerLists();
  makingClassesImmutable();
}

void defaultConstructor() {
  // class Address {
  //   var value = '';
  // }
}

void longFormConstructor() {
  // class User {
  //   User(int id, String name) {
  //     this.id = id;
  //     this.name = name;
  //   }

  //   int id = 0;
  //   String name = '';

  //   // ...
  // }

  // final user = User(42, 'Ray');
  // print(user);
}

void shortFormConstructor() {
  // class User {
  //   User(this.id, this.name);
  //   int id = 0;
  //   String name = '';
  //   // ...
  // }
}

void namedConstructors() {
  // User.anonymous() {
  //   id = 0;
  //   name = 'anonymous';
  // }
  const anonymousUser = User.anonymous();
  print(anonymousUser);
}

void forwardingConstructors() {
  // User.anonymous() : this(0, 'anonymous');
  final anonymousUser = User.anonymous();
  print(anonymousUser);
}

void optionalAndNamedParameters() {
  // MyClass([this.myProperty]);
  // MyClass({this.myProperty});
  // MyClass({required this.myProperty});

  // final user = User(42, 'Ray');
  // User({this.id = 0, this.name = 'anonymous'});
  final user = User(id: 42, name: 'Ray');
  print(user);
}

void initializerLists() {
// User({int id = 0, String name = 'anonymous'})
//     : _id = id,
//       _name = name;

//   User({int id = 0, String name = 'anonymous'})
//     : _id = id,
//       _name = name {
//   print('User name is $_name');
// }

  final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';

  print(vicki);
}

void makingClassesImmutable() {
  const user = User(id: 42, name: 'Ray');
  const anonymousUser = User.anonymous();
  print(user);
  print(anonymousUser);
}
