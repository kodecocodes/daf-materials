// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

const global = 'Hello, world';

void main() {
  /// Comparison Operators

  // const bool yes = true;
  // const bool no = false;
  const yes = true;
  const no = false;

  /// Boolean Operators

  const doesOneEqualTwo = (1 == 2);
  print('doesOneEqualTwo: $doesOneEqualTwo');
  // const doesOneEqualTwo = 1 == 2;
  print(2 == 2.0);

  const doesOneNotEqualTwo = (1 != 2);
  print('doesOneNotEqualTwo: $doesOneNotEqualTwo');

  const alsoTrue = !(1 == 2);
  print('alsoTrue: $alsoTrue');

  const isOneGreaterThanTwo = (1 > 2);
  const isOneLessThanTwo = (1 < 2);
  print('isOneGreaterThanTwo: $isOneGreaterThanTwo');
  print('isOneLessThanTwo: $isOneLessThanTwo');

  print(1 <= 2);
  print(2 <= 2);
  print(2 >= 1);
  print(2 >= 2);

  /// Boolean Logic

  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;
  print('willGoCycling: $willGoCycling');

  const willTravelToAustralia = true;
  const canFindPhoto = false;
  const canDrawPlatypus = willTravelToAustralia || canFindPhoto;
  print('canDrawPlatypus: $canDrawPlatypus');

  const andTrue = 1 < 2 && 4 > 3;
  const andFalse = 1 < 2 && 3 > 4;
  const orTrue = 1 < 2 || 3 > 4;
  const orFalse = 1 == 2 || 3 == 4;
  print('andTrue: $andTrue');
  print('andFalse: $andFalse');
  print('orTrue: $orTrue');
  print('orFalse: $orFalse');

  const andOr = 3 > 4 && 1 < 2 || 1 < 4;
  print('andOr: $andOr');

  const orFirst = 3 > 4 && (1 < 2 || 1 < 4);
  const andFirst = (3 > 4 && 1 < 2) || 1 < 4;
  print('orFirst: $orFirst');
  print('andFirst: $andFirst');

  /// String Equality

  const guess = 'dog';
  const guessEqualsCat = guess == 'cat';
  print('guessEqualsCat: $guessEqualsCat');

  /// The If Statement

  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);

  /// Variable Scope

  const local = 'Hello, main';

  if (2 > 1) {
    const insideIf = 'Hello, anybody?';

    print(global);
    print(local);
    print(insideIf);
  }

  print(global);
  print(local);
  // print(insideIf); // Not allowed!

  /// The Ternary Conditional Operator

  const score = 83;
  String message;
  if (score >= 60) {
    message = 'You passed';
  } else {
    message = 'You failed';
  }
  print('message: $message');

  message = (score >= 60) ? 'You passed' : 'You failed';
  print('message: $message');

  /// Switch Statements

  const number = 3;
  if (number == 0) {
    print('zero');
  } else if (number == 1) {
    print('one');
  } else if (number == 2) {
    print('two');
  } else if (number == 3) {
    print('three');
  } else if (number == 4) {
    print('four');
  } else {
    print('something else');
  }

  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default:
      print('something else');
  }

  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }

  /// Enumerated Types

  // Find the enum defined below, outside of the main() function.
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen.');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }

  print(weatherToday);
  final index = weatherToday.index;
  print(index);
}

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

// enum Weather { sunny, snowy, cloudy, rainy }
