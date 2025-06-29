import 'package:flutter/material.dart';
import 'package:thefixed/pages/home.dart';
import 'package:thefixed/pages/onboarding.dart';
import 'package:thefixed/pages/service/login.dart';
import 'package:thefixed/pages/service/navigation_bar.dart';
import 'package:thefixed/pages/service/pizza_detail.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Login(),
    ),
  ));
}
