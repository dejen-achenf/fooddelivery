import "package:flutter/material.dart";
import "package:thefixed/medel/pizza_model.dart";

List<Pizzamodel> getPizza() {
  List<Pizzamodel> pizza = [];
  Pizzamodel pizzamodel = new Pizzamodel();

  List<Pizzamodel> categories = [];
  pizzamodel.name = ' pazza';
  pizzamodel.price = ' \$50';

  pizzamodel.photo = 'assets/images/pizza1.png';
  pizza.add(pizzamodel);
  pizzamodel = new Pizzamodel();

  pizzamodel.name = ' chiken pizza';
  pizzamodel.price = ' \$500';

  pizzamodel.photo = 'assets/images/pizza2.png';
  pizza.add(pizzamodel);
  pizzamodel = new Pizzamodel();
  pizzamodel.name = ' love pizza';
  pizzamodel.price = ' \$500';

  pizzamodel.photo = 'assets/images/pizza.png';
  pizza.add(pizzamodel);
  pizzamodel = new Pizzamodel();
  pizzamodel.name = ' cheese pizza';
  pizzamodel.price = ' \$500';

  pizzamodel.photo = 'assets/images/pizza3.png';
  pizza.add(pizzamodel);
  pizzamodel = new Pizzamodel();

  return pizza;
}
