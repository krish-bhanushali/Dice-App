import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Center(
          child: Text(
            'Lets roll it',
            style: TextStyle(
              fontFamily: 'SpicyRice',
              color: Colors.white,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Dice(),
    ),
  ));
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void diceReset() {
    setState(() {
      leftDiceNumber = 1;
      rightDiceNumber = 1;
    });
  }

  void diceChange() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: Row(
            children: <Widget>[
              
              Container(
                  
                  child: Image.asset('images/diice.png',height: 100.0,width: 400.0,),)

            ],
          ),
        ),
        Text(
          'DICE 1.0',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 100.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {

                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {

                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(150.0, 0.0  , 0.0, 0.0),
              child: FloatingActionButton(

                onPressed: () {
                  diceChange();
                },
                backgroundColor: Colors.grey[850],
                child: Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            FloatingActionButton(

             onPressed: () {
               diceReset();
              },
              backgroundColor: Colors.grey[850],
              child: Icon(
            Icons.rotate_left,
            color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
