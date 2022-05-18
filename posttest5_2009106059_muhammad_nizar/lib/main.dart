import 'package:flutter/material.dart';
import 'package:posttest5_2009106059_muhammad_nizar/SplashScreen.dart';
import 'package:posttest5_2009106059_muhammad_nizar/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}