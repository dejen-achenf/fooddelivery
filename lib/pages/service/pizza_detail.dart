import 'package:flutter/material.dart';
import 'package:thefixed/ingredients.dart/support.dart';

class PizzaDetail extends StatefulWidget {
  const PizzaDetail({super.key});

  @override
  State<PizzaDetail> createState() => _PizzaDetailState();
}

class _PizzaDetailState extends State<PizzaDetail> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(),
        margin: EdgeInsets.only(top: 50, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
              child: Icon(
                Icons.arrow_back,
                size: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(0),
              child: Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/pizzab.png",
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "  cheese pizza",
              style: Appwidget.pissaname(),
            ),
            Text(
              "     \$50",
              style: Appwidget.pissaname(),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
                "Pizza is a savory dish of Italian origin, consisting of a flattened, usually round, bread base topped with tomato sauce, cheese, and various other ingredients like vegetables, meat, or spices, then baked at a high temperature. It's a versatile food, with many different topping combinations and crust styles"),
            SizedBox(
              height: 50,
            ),
            Text(
              "Quantity",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: Icon(
                    Icons.add,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "$quantity",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: Icon(
                    Icons.remove,
                    size: 36,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "\$100",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ))),
                SizedBox(
                  width: 50,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Order Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
