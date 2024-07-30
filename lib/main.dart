import 'package:flutter/material.dart';
import 'package:freelance/char_model.dart';
import 'package:freelance/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CharacterModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CharacterCustomizationScreen(),
    );
  }
}
