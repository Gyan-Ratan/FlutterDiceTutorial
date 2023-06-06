import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: const Text('Dice Roler'),
          backgroundColor: Colors.grey[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ld = 1;
  int rd = 1;
  void Roller() {
    setState(() {
      ld = Random().nextInt(6) + 1;
      rd = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              Roller();
            },
            child: Image.asset("images/dice$ld.png"),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              Roller();
            },
            child: Image.asset("images/dice$rd.png"),
          ))
        ],
      ),
    );
  }
}
