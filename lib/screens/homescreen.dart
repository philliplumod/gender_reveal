import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gender_reveal/screens/modal_countdown.dart';
import 'package:gender_reveal/screens/reveal_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void showCountdownModal(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CountdownModal(
          onCountdownComplete: () {
            Navigator.pop(context); // Close the countdown modal
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RevealScreen(),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/5600759.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showCountdownModal(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 16,
              ),
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('Gender Reveal'),
          ),
        ),
      ),
    );
  }
}
