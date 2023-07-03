import 'dart:async';
import 'dart:ui';

class Debounce {
  static final Map<String, Timer> _timers = {};

  //выывается событие с задержкой
  //если задержка не прошла, старое событие отменяется
  static void debounce(
    String tag,
    VoidCallback onExecute, {
    Duration duration = const Duration(milliseconds: 200),
  }) {
    if (duration == Duration.zero) {
      _timers[tag]?.cancel();
      _timers.remove(tag);
      onExecute();
    } else {
      //если задержка не прошла, старое событие отменяется
      _timers[tag]?.cancel();
      //выывается событие с задержкой
      _timers[tag] = Timer(duration, () {
        _timers[tag]?.cancel();
        _timers.remove(tag);
        onExecute();
      });
    }
  }
}

class Throtlle {
  static final Map<String, Timer> _timers = {};

  //добавляет timeout к действию
  //пока он не закончится, команды больше не проходят
  static void throtlle(
    String tag,
    VoidCallback onExecute, {
    Duration duration = const Duration(milliseconds: 200),
  }) {
    //блок если таймер не закончился
    if (_timers[tag]?.isActive == true) return;

    //удаляем таймер и запускаем событие
    _timers[tag]?.cancel();
    _timers.remove(tag);
    onExecute();

    //если есть задержка, запускаем таймер для блока
    if (duration != Duration.zero) {
      _timers[tag] = Timer(duration, () {});
    }
  }
}