import 'package:memory_game/pages/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Game',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 103, 59, 156),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 103, 59, 156)),
        useMaterial3: true,
        
      ),
      home: StartPage(),
    );
  }
}
