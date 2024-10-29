// ignore_for_file: prefer_const_constructors, unused_import

import 'package:ecommerce_clone_sample/utilits/color_constants.dart';
import 'package:ecommerce_clone_sample/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}