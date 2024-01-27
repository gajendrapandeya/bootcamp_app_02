import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _diceNumber = 1;
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset('assets/dice-$_diceNumber.png'),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _diceNumber = _random.nextInt(6) + 1;
              });
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
            ),
            child: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
