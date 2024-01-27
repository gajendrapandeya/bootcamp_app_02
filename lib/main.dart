import 'package:dice_roller/dice_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber.shade300,
        appBar: AppBar(
          title: const Text('Dice App'),
          backgroundColor: Colors.amber.shade700,
          elevation: 0,
        ),
        body: const DicePage()
      ),
    );
  }
}
