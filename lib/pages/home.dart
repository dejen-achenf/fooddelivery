import 'package:flutter/material.dart';
import 'package:thefixed/ingredients.dart/support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 120,
                      ),
                    ),
                    Text(
                      "Order your favorite food!",
                      style: TextStyle(fontSize: 23),
                    )
                  ],
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/boy.png",
                      height: 90,
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 320,
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 221, 220, 220),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search food item...",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.search,
                    size: 50,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
