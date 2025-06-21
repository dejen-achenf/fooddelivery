import 'package:flutter/material.dart';
import 'package:thefixed/ingredients.dart/support.dart';
import 'package:thefixed/medel/category_model.dart';
import 'package:thefixed/pages/service/category_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<categoryModel> categories = [];
  @override
  void initState() {
    super.initState();
    categories = getCategories(); // Assuming this is imported
  }

  int selectedindex = 0;

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
                      height: 60,
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
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
              height: 60,
              child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Categorytile(
                      name: categories[index].name!,
                      photo: categories[index].photo!,
                      isSelected: selectedindex == index,
                      onTap: () {
                        setState(() {
                          selectedindex = index;
                        });
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class Categorytile extends StatefulWidget {
  String name;
  String photo;
  final bool isSelected;

  final VoidCallback onTap;
  Categorytile(
      {required this.name,
      required this.photo,
      required this.isSelected,
      required this.onTap});
  @override
  State<Categorytile> createState() => _CategorytileState();
}

class _CategorytileState extends State<Categorytile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: widget.isSelected ? Colors.red : Colors.grey,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  widget.photo,
                  height: 40,
                )),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.name,
              style: TextStyle(
                  fontSize: 18,
                  color: widget.isSelected ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
