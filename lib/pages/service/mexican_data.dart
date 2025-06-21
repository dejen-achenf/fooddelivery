import "package:flutter/material.dart";
import "package:thefixed/medel/mexican_model.dart";
import "package:thefixed/medel/pizza_model.dart";

List<MexicanModel> getMexican() {
  List<MexicanModel> mexican = [];
  MexicanModel mexicanmodel = new MexicanModel();

  mexicanmodel.name = ' pazza';
  mexicanmodel.price = ' \$50';

  mexicanmodel.photo = 'assets/images/mexican1.png';
  mexican.add(mexicanmodel);
  mexicanmodel = new MexicanModel();

  mexicanmodel.name = ' chiken mexican';
  mexicanmodel.price = ' \$500';

  mexicanmodel.photo = 'assets/images/mexican2.png';
  mexican.add(mexicanmodel);
  mexicanmodel = new MexicanModel();
  mexicanmodel.name = ' love mexican';
  mexicanmodel.price = ' \$500';

  mexicanmodel.photo = 'assets/images/mexican.png';
  mexican.add(mexicanmodel);
  mexicanmodel = new MexicanModel();
  mexicanmodel.name = ' cheese mexican';
  mexicanmodel.price = ' \$500';

  mexicanmodel.photo = 'assets/images/mexican3.png';
  mexican.add(mexicanmodel);
  mexicanmodel = new MexicanModel();

  return mexican;
}
