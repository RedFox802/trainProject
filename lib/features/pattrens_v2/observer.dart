class Observable {
  final List<Observer> _observers = [];

  Observable();

  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  void deleteObserver(Observer observer) {
    _observers.remove(observer);
  }

  void notify(String notification) {
    for (var observer in _observers) {
      observer.notify(notification);
    }
  }
}

class Observer {
  String name;

  Observer(this.name);

  void notify(String notification) {
    print("Hey $name, $notification!");
  }
}

class CoffeeMaker extends Observable {
  CoffeeMaker();

  void brew() {
    print("Brewing the coffee...");
    notify("coffee's done");
  }
}

void main() {
  var observer1 = Observer("Tyler");
  var observer2 = Observer("Tanya");

  var mrCoffee = CoffeeMaker();
  mrCoffee.addObserver(observer1);
  mrCoffee.addObserver(observer2);

  mrCoffee.brew();
}
