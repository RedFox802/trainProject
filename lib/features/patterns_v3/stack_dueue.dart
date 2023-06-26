//первым пришел, первым вышел
class Stack<T> {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T? pop() {
    if (_items.isEmpty) return null;
    return _items.removeLast();
  }

  T? peek() {
    if (_items.isEmpty) return null;
    return _items.last;
  }
}

//первым пришел, последним вышел
class Queue<T> {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T? pop() {
    if (_items.isEmpty) return null;
    return _items.removeAt(0);
  }

  T? peek() {
    if (_items.isEmpty) return null;
    return _items.first;
  }
}
