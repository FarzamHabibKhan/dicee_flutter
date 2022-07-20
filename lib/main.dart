import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  // function that randomly chooses a number from 1-6
  // to allow to change the state of the left and right
  // dice image.
  void changeState(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: (){
                  changeState();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )
          ),
          Expanded(
              child: TextButton(
                onPressed: (){
                  changeState();  // calling changeState function
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              )
          ),
        ],
      ),
    );
  }
}
