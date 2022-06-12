import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF6C6EA),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color(0xEDF6C6EA),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void ChangeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

      // print(res);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  ChangeDice();
                  // print('Image 1 Clicked');
                },
                child: Image.asset('images/dice${leftDiceNumber}.png'),
              ),
            ),
            // Image(
            //   // width: 200,
            //   image: AssetImage('images/dice1.png'),
            // ),
          ),
          Expanded(
            // flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  ChangeDice();
                  // print('Image 2 Clicked');
                },
                child: Image(
                  // width: 200,
                  image: AssetImage('images/dice${rightDiceNumber}.png'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
