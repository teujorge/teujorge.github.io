import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matheus Jorge',
      theme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      home: const HomePage(),
    );
  }
}

// GH Pages : https://www.youtube.com/watch?v=4yQ27SSnWzk

