void chainOfResponsibilityDemonstrate() {
  const example1 = '';
  const example2 = 'lalala';

  final handler = HandleManager<String>([
    Handler1(),
    Handler2(),
  ]);

  handler.handleRequest(example1);
  handler.handleRequest(example2);
}

abstract class HandlerBase<T> {
  HandlerBase<T>? _nextHandler;

  void setNext(HandlerBase<T> handler) {
    _nextHandler = handler;
  }

  void handleRequest(T value);
}

class HandleManager<T> {
  HandleManager(this._handlers) {
    _init();
  }

  final List<HandlerBase<T>> _handlers;

  _init() {
    for (int i = 0; i < _handlers.length; i++) {
      final currentHandler = _handlers.elementAt(i);
      if (i + 1 < _handlers.length) {
        final nextHandler = _handlers.elementAt(i + 1);
        currentHandler.setNext(nextHandler);
      }
    }
  }

  void handleRequest(T value) => _handlers.first.handleRequest(value);
}

class Handler1 extends HandlerBase<String> {
  @override
  void handleRequest(value) {
    if (value.isEmpty) {
      return print('строка пустая');
    }
    if (_nextHandler != null) {
      _nextHandler!.handleRequest(value);
    }
  }
}

class Handler2 extends HandlerBase<String> {
  @override
  void handleRequest(value) {
    if (value.contains('a')) {
      return print('строка содержит букву а');
    }
    if (_nextHandler != null) {
      _nextHandler!.handleRequest(value);
    }
  }
}
