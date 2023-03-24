import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  buildKey({required color, required int soundNumber}) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
        child: const Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.amber, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.white, soundNumber: 4),
            buildKey(color: Colors.pink, soundNumber: 5),
            buildKey(color: Colors.cyan, soundNumber: 6),
            buildKey(color: Colors.teal, soundNumber: 7)
          ],
        )),
      ),
    );
  }
}
