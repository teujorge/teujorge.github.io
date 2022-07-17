import 'package:flutter/material.dart';
import 'UI/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matheus Jorge',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        fontFamily: "Proxima Nova",
        colorScheme: ColorScheme.light(),
        primaryColor: ColorScheme.light().primary,
      ),
      darkTheme: ThemeData(
        fontFamily: "Proxima Nova",
        colorScheme: ColorScheme.dark(),
        primaryColor: ColorScheme.dark().primary,
      ),
    );
  }
}
