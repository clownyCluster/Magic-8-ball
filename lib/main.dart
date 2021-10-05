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
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = Random().nextInt(5)+1;
  void ballPress() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me anything'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: FlatButton(
                child: Image.asset('images/ball$ballNumber.png'),
                onPressed: () {
                  ballPress();
                  print('I got pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
