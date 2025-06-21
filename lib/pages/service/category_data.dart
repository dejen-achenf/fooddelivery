import 'package:flutter/material.dart';
import 'package:thefixed/medel/category_model.dart';

List<categoryModel> getCategories() {
  List<categoryModel> category = [];
  categoryModel categorymodel = new categoryModel();

  categorymodel.name = 'pazza';
  categorymodel.photo = 'assets/images/pizza.png';
  category.add(categorymodel);
  categorymodel = new categoryModel();

  categorymodel.name = 'burger';
  categorymodel.photo = 'assets/images/burger.png';
  category.add(categorymodel);
  categorymodel = new categoryModel();

  categorymodel.name = 'chinese';
  categorymodel.photo = 'assets/images/chinese.png';
  category.add(categorymodel);

  categorymodel = new categoryModel();

  categorymodel.name = 'mexican';
  categorymodel.photo = 'assets/images/tactos.png';
  category.add(categorymodel);
  categorymodel = new categoryModel();

  return category;
}
