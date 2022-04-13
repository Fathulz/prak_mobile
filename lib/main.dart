import 'package:flutter/material.dart';
import 'package:posttest2_miftahulhaq_1915016191/landingPageUI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPageUI(),
    );
  }
}
