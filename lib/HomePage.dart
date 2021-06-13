import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  // final String title;
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  AssetImage one   = AssetImage("images/one.png");
  AssetImage two   = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four  = AssetImage("images/four.png");
  AssetImage five  = AssetImage("images/five.png");
  AssetImage six   = AssetImage("images/six.png");

  late AssetImage diceimage;
  late AssetImage ndiceimage;
  late AssetImage newImage;
  late AssetImage anewImage;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      ndiceimage = two;
    });
  }

  void rollDice(){
    int random = (1 + Random().nextInt(6));
    int arandom = (1 + Random().nextInt(6));
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    switch (arandom) {
      case 1:
        anewImage = one;
        break;
      case 2:
        anewImage = two;
        break;
      case 3:
        anewImage = three;
        break;
      case 4:
        anewImage = four;
        break;
      case 5:
        anewImage = five;
        break;
      case 6:
        anewImage = six;
        break;
    }
    setState(() {
      diceimage = newImage;
      ndiceimage = anewImage;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceimage,
                width: 200.0,
                height: 200.0,
              ),
              SizedBox(height: 10),
              Image(
                image: ndiceimage,
                width: 200.0,
                height: 200.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(50.0, 15.0, 50.0, 15.0),
                  child: Text('Roll the dice!'),
                  onPressed: rollDice,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   // onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
