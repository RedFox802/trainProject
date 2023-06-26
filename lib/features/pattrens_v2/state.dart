import 'package:flutter/material.dart';

abstract class LampState {}

class StatusOn implements LampState {
  StatusOn({this.brightness = 60, this.color = Colors.red});

  final double brightness;
  final Color color;

  @override
  String toString() {
    return 'lamp on';
  }
}

class StatusOff implements LampState {
  @override
  String toString() {
    return 'lamp off';
  }
}

class LampStateManager {
  LampState _state;

  LampStateManager(this._state);

  LampState get state => _state;

  void touch() {
    if (state is StatusOn) _state = StatusOff();
    _state = StatusOn();
  }
}

void main() {
  var lightSwitch = LampStateManager(StatusOff());
  print("The light is ${lightSwitch.state}.");
  lightSwitch.touch();
  print("The light is ${lightSwitch.state}.");
}
