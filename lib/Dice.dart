import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  List dices = [
    'images/inverted-dice-1.png',
    'images/inverted-dice-2.png',
    'images/inverted-dice-3.png',
    'images/inverted-dice-4.png',
    'images/inverted-dice-5.png',
    'images/inverted-dice-6.png'
  ];
  String image1 = 'images/inverted-dice-1.png';
  String image2 = 'images/inverted-dice-1.png';
  int sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Center(
          child: Text('Roll Dice Task'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('The Sum is $sum'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      int num1 = Random().nextInt(6);
                      image1 = dices[num1];
                      int num2 = Random().nextInt(6);
                      image2 = dices[num2];

                      int x = num1 + 1;
                      int y = num2 + 1;
                      sum = x + y;
                    });
                  },
                  child: Container(
                      color: Colors.grey,
                      child: const Padding(
                        child: Text('Roll Dice'),
                        padding: EdgeInsets.all(8),
                      ))),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(image1),
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                Image(
                  image: AssetImage(image2),
                  height: 100,
                  width: 100,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
