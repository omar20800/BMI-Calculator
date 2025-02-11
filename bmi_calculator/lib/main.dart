import 'package:flutter/material.dart';
import 'screens/info_page.dart';
import 'screens/result_page.dart';
import 'globals.dart' as globals;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Infopage(),
    );
  }
}
