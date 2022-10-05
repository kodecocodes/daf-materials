class HundredSquares extends Iterable<int> {
  @override
  Iterator<int> get iterator => SquaredIterator();
}

class SquaredIterator implements Iterator<int> {
  int _index = 0;

  @override
  bool moveNext() {
    _index++;
    return _index <= 100;
  }

  @override
  int get current => _index * _index;
}
