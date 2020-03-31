import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.indigo[800],
      ),
      body: Center(
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  var rng = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () => setState(() => ballNumber = rng.nextInt(5) + 1),
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
