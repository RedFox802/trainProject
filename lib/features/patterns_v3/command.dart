class MyUtils {
  static void doAnything({
    required int count,
    required String data,
    required bool isEnable,
  }) {
    if (isEnable) {
      data.substring(0, count);
    }
  }
}

abstract class CommandInterface {
  void call();
}

class MyCommand extends CommandInterface {
  MyCommand({
    required this.count,
    required this.data,
    required this.isEnable,
  });

  final int count;
  final String data;
  final bool isEnable;

  @override
  void call() {
    MyUtils.doAnything(
      count: count,
      data: data,
      isEnable: isEnable,
    );
  }
}
