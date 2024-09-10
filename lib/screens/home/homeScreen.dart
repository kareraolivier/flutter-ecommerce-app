import 'package:flutter/material.dart';
import 'package:recipe/components/Header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(
        title: 'Home Page',
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('karera super'),
        ),
      ),
    );
  }
}
