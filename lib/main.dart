import 'package:e_commerce_app/bottom_navigation_bar_screen.dart';
import 'package:e_commerce_app/carousel_slider.dart';
import 'package:e_commerce_app/home_screen.dart';
import 'package:e_commerce_app/login_screen.dart';
import 'package:e_commerce_app/otp_screen.dart';
import 'package:e_commerce_app/register_screen.dart';
import 'package:e_commerce_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}

