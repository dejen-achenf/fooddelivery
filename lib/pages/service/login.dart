import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 128, 97, 6)),
                      child: Center(
                          child: Image.asset(
                        "assets/images/pizza2.png",
                        fit: BoxFit.cover,
                      )),
                    ),
                  ],
                ),
              ),
              Container()
            ],
          )),
    );
  }
}
