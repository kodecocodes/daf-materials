// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  basicListOperations();
  mutableAndImmutableLists();
  creatingDeeplyImmutableLists();
  listProperties();
  loopingOverElementsOfList();
  codeAsUi();
  handlingNullableLists();
}

void basicListOperations() {
  // Creating a List
  var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts = [];
  // var snacks = [];
  // List<String> snacks = [];
  var snacks = <String>[];

  // Printing Lists
  desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  print(desserts);

  // Accessing Elements
  final secondElement = desserts[1];
  print(secondElement);
  final index = desserts.indexOf('pie');
  final value = desserts[index];
  print('The value at index $index is $value.');

  // Assigning Values to List Elements
  desserts[1] = 'cake';
  print(desserts);

  // Adding Elements to the End of a List
  desserts.add('brownies');
  print(desserts);

  // Inserting Elements
  desserts.insert(1, 'ice cream');
  print(desserts);

  // Removing Elements
  desserts.remove('cake');
  print(desserts);
  desserts.removeAt(0);
  print(desserts);

  // Sorting Lists
  final integers = [32, 73, 2, 343, 7, 10, 1];
  integers.sort();
  print(integers);
  final smallest = integers[0];
  print(smallest);

  final lastIndex = integers.length - 1;
  final largest = integers[lastIndex];
  print(largest);

  final animals = ['zebra', 'dog', 'alligator', 'cat'];
  animals.sort();
  print(animals);
}

void mutableAndImmutableLists() {
  final desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts = [];
  // desserts = ['cake', 'ice cream'];
  // desserts = someOtherList;

  desserts.remove('cookies');
  desserts.remove('cupcakes');
  desserts.add('ice cream');
  print(desserts);
}

void creatingDeeplyImmutableLists() {
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // final desserts = const ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts.add('brownie');
  // desserts.remove('pie');
  // desserts[0] = 'fudge';
  print(desserts);

  final modifiableList = [DateTime.now(), DateTime.now()];
  print(modifiableList);
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);
}

class Desserts {
  Desserts([this.desserts = const ['cookies']]);
  final List<String> desserts;
}

void listProperties() {
  const drinks = ['water', 'milk', 'juice', 'soda'];
  print(drinks.first);
  print(drinks.last);
  print(drinks[0]);
  print(drinks[drinks.length - 1]);
  print(drinks.isEmpty);
  print(drinks.isNotEmpty);
  print(drinks.length == 0);
  print(drinks.length > 0);
}

void loopingOverElementsOfList() {
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];

  // Using a For Loop
  for (int i = 0; i < desserts.length; i++) {
    final item = desserts[i];
    print('I like $item.');
  }

  // Using a For-In Loop
  for (final item in desserts) {
    print('I also like $item!');
  }
}

void codeAsUi() {
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];

  // Spread Operator

  // final desserts = ['donuts'];
  // desserts.addAll(pastries);
  // desserts.addAll(candy);
  // print(desserts);

  const desserts = [
    'donuts',
    ...pastries,
    ...candy,
  ];
  print(desserts);

  // Collection If
  const peanutAllergy = true;
  const sensitiveCandy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(sensitiveCandy);

  // Collection For
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);
}

void handlingNullableLists() {
  // Nullable Lists vs. Nullable Elements
  List<int>? nullableList = [2, 4, 3, 7];
  print(nullableList);
  nullableList = null;
  print(nullableList);

  List<int?> nullableElements = [2, 4, null, 3, 7];
  print(nullableElements);

  List<int?>? nullableListAndElements = [2, 4, null, 3, 7];
  print(nullableListAndElements);
  nullableListAndElements = null;
  print(nullableListAndElements);

  // Using the Basic Null Aware Operators
  List<String?>? drinks = ['milk', 'water', null, 'soda'];
  for (String? drink in drinks) {
    int letters = drink?.length ?? 0;
    print(letters);
  }

  // Null-Aware Index Operator
  List<String>? myDesserts = ['cake', 'pie'];
  myDesserts = null;
  String? dessertToday = myDesserts?[1];
  print(dessertToday);

  // Null-Aware Spread Operator
  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks);
}
