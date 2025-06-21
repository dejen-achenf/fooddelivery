import "package:flutter/material.dart";
import "package:thefixed/medel/burger_model.dart";
import "package:thefixed/medel/pizza_model.dart";

List<BurgerModel> getBurger() {
  List<BurgerModel> burger = [];
  BurgerModel burgermodel = new BurgerModel();

  burgermodel.name = ' burger';
  burgermodel.price = ' \$50';

  burgermodel.photo = 'assets/images/pizza1.png';
  burger.add(burgermodel);
  burgermodel = new BurgerModel();

  burgermodel.name = ' chiken burger';
  burgermodel.price = ' \$500';

  burgermodel.photo = 'assets/images/pizza2.png';
  burger.add(burgermodel);
  burgermodel = new BurgerModel();
  burgermodel.name = ' love burger';
  burgermodel.price = ' \$500';

  burgermodel.photo = 'assets/images/pizza.png';
  burger.add(burgermodel);
  burgermodel = new BurgerModel();
  burgermodel.name = ' cheese burger';
  burgermodel.price = ' \$500';

  burgermodel.photo = 'assets/images/pizza3.png';
  burger.add(burgermodel);
  burgermodel = new BurgerModel();

  return burger;
}
