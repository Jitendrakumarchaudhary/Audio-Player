import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp( XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required int numbersound, required Color color}){
    return Expanded(
      child: ElevatedButton(
          onPressed: () {
            playSound(numbersound);
          },
          child:  Text (''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color:Colors.white,numbersound: 1),
              buildKey(color: Colors.orange, numbersound: 2),
              buildKey(color: Colors.yellow, numbersound: 3),
              buildKey(color: Colors.green, numbersound: 4),
              buildKey(color: Colors.teal, numbersound: 5),
              buildKey(color: Colors.blue, numbersound: 6),
              buildKey(color: Colors.purple, numbersound: 7),
            ],
          ),
        ),
      ),
    );
  }
}