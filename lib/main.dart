import 'package:flutter/material.dart';
import 'package:bullet_animation/pagets/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic Ball',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Home(title: 'Магічна куля'),
    );
  }
}
