import 'dart:isolate';

class IsolatesService {
  static Future<String> createSimpleIsolate() {
    return Isolate.run(() {
      return Future.delayed(
        const Duration(seconds: 2),
      ).then((value) => 'complete');
    });
  }

  static Stream<String> createIsolate() async* {
    Future<void> isolateHandler(SendPort sendPort) async {
      await Future.delayed(const Duration(seconds: 2));
      sendPort.send('start');
      await Future.delayed(const Duration(seconds: 2));
      sendPort.send('end');
    }

    final receivePort = ReceivePort();
    Isolate.spawn(
      isolateHandler,
      receivePort.sendPort,
    );

    yield* receivePort.map((event) {
      if (event == 'start') {
        return 'Start';
      }
      if (event == 'end') {
        receivePort.close();
        return 'End';
      }

      return '';
    });
  }
}
