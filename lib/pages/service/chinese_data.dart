import "package:flutter/material.dart";
import "package:thefixed/medel/chinese_model.dart";
import "package:thefixed/medel/pizza_model.dart";

List<ChineseModel> getChinese() {
  List<ChineseModel> chinese = [];
  ChineseModel chinesemodel = new ChineseModel();

  chinesemodel.name = ' pazza';
  chinesemodel.price = ' \$50';

  chinesemodel.photo = 'assets/images/pizza1.png';
  chinese.add(chinesemodel);
  chinesemodel = new ChineseModel();

  chinesemodel.name = ' chiken chinese';
  chinesemodel.price = ' \$500';

  chinesemodel.photo = 'assets/images/pizza2.png';
  chinese.add(chinesemodel);
  chinesemodel = new ChineseModel();
  chinesemodel.name = ' love chinese';
  chinesemodel.price = ' \$500';

  chinesemodel.photo = 'assets/images/chinese.png';
  chinese.add(chinesemodel);
  chinesemodel = new ChineseModel();
  chinesemodel.name = ' cheese chinese';
  chinesemodel.price = ' \$500';

  chinesemodel.photo = 'assets/images/pizza3.png';
  chinese.add(chinesemodel);
  chinesemodel = new ChineseModel();

  return chinese;
}
