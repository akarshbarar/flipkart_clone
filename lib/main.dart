import 'package:flipkart/Language.dart';
import 'package:flipkart/SplashScreen.dart';
import 'package:flipkart/home.dart';
import 'package:flipkart/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flipkart',
      home: SplashScreen(),
      routes: {
        "/languagePage": (context) => Language(),
        "/login": (context) => Login(),
        '/home': (context) => Home()
      },
    );
  }
}
