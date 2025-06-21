import 'package:flutter/material.dart';
import 'package:thefixed/pages/home.dart';
import 'package:thefixed/pages/onboarding.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Home(),
    ),
  ));
}
