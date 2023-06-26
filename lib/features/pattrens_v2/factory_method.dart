abstract class Baggage {
  Baggage({required this.volume});

  final double volume;
}

class Briefcase extends Baggage {
  Briefcase({
    required super.volume,
    required this.isSportType,
  });

  final bool isSportType;
}

class Suitcase extends Baggage {
  Suitcase({
    required super.volume,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;
}

enum Target { walk, vacation, moving, sport }

class BaggageFactory {
  static Baggage vesselFor(Target target) {
    Baggage baggage;
    switch (target) {
      case Target.sport:
        baggage = Briefcase(volume: 10, isSportType: true);
        break;
      case Target.walk:
        baggage = Briefcase(volume: 20, isSportType: false);
        break;
      case Target.moving:
        baggage = Suitcase(volume: 100, height: 80, width: 30);
        break;
      case Target.vacation:
        baggage = Suitcase(volume: 60, height: 50, width: 20);
        break;
      default:
        baggage = Briefcase(volume: 20, isSportType: false);
        break;
    }
    return baggage;
  }
}

void main() {
  var travelBaggage = BaggageFactory.vesselFor(Target.vacation);
}
