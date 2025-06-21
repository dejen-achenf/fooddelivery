import 'package:flutter/material.dart';
import 'package:thefixed/ingredients.dart/support.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Image.asset("assets/images/image.png"),
              SizedBox(
                height: 30,
              ),
              Text(
                "The Fastest\n Food Delivery",
                style: Appwidget.hedmeles(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Craving something delicious?\n Order now and get your favorites\n delivered fast!",
                style: Appwidget.hedmeless(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xff8c592a),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
