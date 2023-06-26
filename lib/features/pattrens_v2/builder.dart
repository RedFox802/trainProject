
class Burger {
  final List<String> _ingredients = [];

  List<String> get ingredients => _ingredients;

  void addIngredient(String ingredient) => _ingredients.add(ingredient);

  void printBurger() {
    String result = '';
    for (var ingredient in ingredients) {
      result = '$result $ingredient';
    }
    print(result);
  }
}

abstract class BurgerBuilder {
  Burger burger = Burger();

  void addCheese();

  void addCutlet();
}

class CheeseBurgerBuilder extends BurgerBuilder {
  @override
  void addCheese() {
    burger.addIngredient('cheese1');
    burger.addIngredient('cheese2');
    burger.addIngredient('cheese3');
  }

  @override
  void addCutlet() {
    burger.addIngredient('cutlet1');
  }
}

class NoCheeseBurgerBuilder extends BurgerBuilder {
  @override
  void addCheese() {}

  @override
  void addCutlet() {
    burger.addIngredient('cutlet1');
  }
}

class BurgerMaker {
  BurgerBuilder burgerBuilder;

  BurgerMaker({
    required this.burgerBuilder,
  });

  void changeBurgerBuilder(BurgerBuilder burgerBuilder) {
    this.burgerBuilder = burgerBuilder;
  }

  Burger get burger => burgerBuilder.burger;

  void createBurger() {
    burgerBuilder.addCheese();
    burgerBuilder.addCutlet();
  }
}

void demonstrate() {
  final burgerMaker = BurgerMaker(
    burgerBuilder: CheeseBurgerBuilder(),
  );
  burgerMaker.createBurger();
  burgerMaker.burger.printBurger();

  burgerMaker.changeBurgerBuilder(
    NoCheeseBurgerBuilder(),
  );
  burgerMaker.createBurger();
  burgerMaker.burger.printBurger();
}
