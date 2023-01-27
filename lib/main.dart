import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('MyDice'),
          backgroundColor: Colors.red,
        ),
        body:  const DicePage(),
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
  //create the var
  int leftNumberDice =1;
  int rightNumberDice =1;
  changeDiceNumbers(){
    rightNumberDice =Random().nextInt(6) + 1;
    leftNumberDice =Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.transparent,
                elevation: 0.0,
              ),
              //anonymus function
              onPressed:(){
              setState(() {
                changeDiceNumbers();
              });
              },
              child: Image.asset('images/dice$leftNumberDice.png'))),
          Expanded(child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.transparent,
                elevation: 0.0,
              ),
              //anonymus function
              onPressed:(){
                setState(() {
                  changeDiceNumbers();
                });
              },
              child: Image.asset('images/dice$rightNumberDice.png'))),
        ],
      ),
    );
  }


}



