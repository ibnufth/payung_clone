import 'package:flutter/material.dart';
import 'package:payung_clone/payung_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PayungApp(),
    );
  }
}
