void iteratorDemonstrate() {
  final collection = CustomCollection([1, 2, 3, 4, 5, 6, 7, 8, 9]);
  final iterator = collection.iterator;

  do {
    print(iterator.current);
    iterator.moveNext();
  } while (iterator.hasNext);
}

// новый тип коллекции, так как у существующих нельзя переопределить итератор
abstract class Collection<T> {
  IteratorInterface<T> get iterator;
}

class CustomCollection<T> extends Collection<T> {
  CustomCollection(this._collection);

  final List<T> _collection;

  @override
  IteratorInterface<T> get iterator => CustomIterator<T>(_collection);
}

//интерфейс итератора с основными методыми
abstract class IteratorInterface<T> {
  T get current;

  bool get hasNext;

  void moveNext();
}

class CustomIterator<T> implements IteratorInterface<T> {
  final List<T> _collection;
  int _currentIndex = 0;

  CustomIterator(this._collection);

  @override
  T get current => _collection[_currentIndex];

  @override
  bool get hasNext {
    return _currentIndex + 2 < _collection.length;
  }

  @override
  void moveNext() {
    if (hasNext) _currentIndex = _currentIndex + 2;
  }
}
