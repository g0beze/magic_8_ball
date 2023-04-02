import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 86, 130, 212),
      appBar: AppBar(
        title: const Text(
          'Ask Me Anything',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 14, 70, 97),
      ),
      body: const MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int bnum = 1;

  void changeBall() {
    setState(() {
      bnum = 1 + Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeBall();
        },
        child: Image.asset('images/ball$bnum.png'),
      ),
    );
  }
}
