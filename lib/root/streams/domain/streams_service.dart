import 'dart:async';

class StreamsService {
  static final StreamController<int> _controller =
      StreamController<int>.broadcast();

  static Stream<int> get streamFromController => _controller.stream;

  static Sink<int> get _sinkFromController => _controller.sink;

  static Stream<int> createStreamFromIterable() async* {
    yield* Stream.fromIterable(
      [9, 8, 7].map((e) {
        return e;
      }),
    );
  }

  static Future<int> futureTask(int value) async {
    await Future.delayed(const Duration(seconds: 1));
    return value;
  }

  static Stream<int> createStreamFromFuture() async* {
  yield* Stream.fromFuture(futureTask(5));
  }

  static Stream<int> createStreamFromFutures() async* {
    yield* Stream.fromFutures(
      [
        futureTask(1),
        futureTask(2),
        futureTask(3),
      ],
    );
  }

  static Stream<int> createPeriodicStream() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1),
      (count) => (count * count),
    );
  }

  static Stream<int> createCycleStream() async* {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  static Future<void> initStreamFromController() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      _sinkFromController.add(i);
    }
  }
}
