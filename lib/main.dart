import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void tone(n) {
      final AudioCache player = AudioCache();
      player.play('note$n.wav');
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {
                    tone(Random().nextInt(8) + 1);
                  },
                  child: Text(' Toblerone'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                  onPressed: () {
                    tone(Random().nextInt(8) + 1);
                  },
                  child: Text('Mars Bar'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    tone(Random().nextInt(8) + 1);
                  },
                  child: Text('Bournville'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    tone(Random().nextInt(8) + 1);
                  },
                  child: Text('Kit Kat'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                  ),
                  onPressed: () {
                    tone(Random().nextInt(8) + 1);
                  },
                  child: Text('Snickers'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: () {
                    tone(Random().nextInt(8) + 1);
                  },
                  child: Text(
                    'Twix',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    tone(Random().nextInt(8) + 1);
                  },
                  child: Text(
                    'Ferrero Rocher',
                    style: TextStyle(fontSize: 18.0, fontFamily: 'Pacifico'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
