import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note1.wav'));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                child: const Text(' '),
              ),
            ),Expanded(
              child: OutlinedButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note3.wav'));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.brown)),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note4.wav'));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.cyan)),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note5.wav'));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note6.wav'));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('note7.wav'));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                child: const Text(' '),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
