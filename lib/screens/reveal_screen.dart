import 'package:flutter/material.dart';

class RevealScreen extends StatefulWidget {
  const RevealScreen({super.key});

  @override
  State<RevealScreen> createState() => _RevealScreenState();
}

class _RevealScreenState extends State<RevealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/9102344.jpg"),
              fit: BoxFit.cover),
        ),
        child: null,
      ),

    );
  }
}
