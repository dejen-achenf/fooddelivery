import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thefixed/pages/home.dart';
import 'package:thefixed/pages/onboarding.dart';
import 'package:thefixed/pages/service/Sign_up.dart';
import 'package:thefixed/pages/service/login.dart';
import 'package:thefixed/pages/service/navigation_bar.dart';
import 'package:thefixed/pages/service/pizza_detail.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Signup(),
    ),
  ));
}
