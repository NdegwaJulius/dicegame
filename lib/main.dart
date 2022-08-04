import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(

      backgroundColor: Colors.redAccent,
      appBar: AppBar(

        centerTitle: true,
        title: Text("DiceMe"),
        backgroundColor: Colors.redAccent,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {

  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;
  Future<void> Randomised() async => setState(() {

      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;


    });
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Row(
        children: <Widget>[
              Expanded(
                child: Padding(
                  padding:  const EdgeInsets.fromLTRB(16.0,0,16.0,0),
                  child: TextButton(
                    onPressed: (){
                      Randomised();
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0,0,16.0,0),
                  child: TextButton(
                    onPressed: (){
                      Randomised();
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),


            ],
      ),
    );
  }
}
