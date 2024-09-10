import 'package:flutter/material.dart';

import 'screens/home/homeScreen.dart';
import 'screens/home/startScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: StartScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
