import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade800,
        appBar: AppBar(
          elevation: 12.0,
          title: const Center(
            child: Text(
              "Dice Game",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 28,
              ),
            ),
          ),
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 5;
  late int audioNumber;
  final player = AudioPlayer();

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  stopMusic() {
    player.stop();
  }

  playMusic() async {
    audioNumber = Random().nextInt(6) + 1;
    await player.play(
      AssetSource('music/note$audioNumber.wav'),
    );
  }

  playTheme() async {
    await player.play(AssetSource('music/audio.mp3'));
  }

  createDiceFace(int diceNumber) {
    return Expanded(
      child: TextButton(
        child: Image.asset('assets/images/dice/dice$diceNumber.png'),
        onPressed: () {
          changeDiceFace();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            createDiceFace(leftDiceNumber),
            createDiceFace(rightDiceNumber),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    playMusic();
                  },
                  child: const Text('Play'),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    stopMusic();
                  },
                  child: const Text('Stop'),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
          onPressed: () {
            playTheme();
          },
          child: const Text('Play Theme'),
        )
      ],
    );
  }
}
