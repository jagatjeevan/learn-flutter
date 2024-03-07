import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 12.0,
          title: const Center(
            child: Text(
              "SaReGaMaPa",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 28,
              ),
            ),
          ),
        ),
        body: const Musix(),
      ),
    ),
  );
}

class Musix extends StatefulWidget {
  const Musix({super.key});

  @override
  State<Musix> createState() => _MusixState();
}

class _MusixState extends State<Musix> {
  final player = AudioPlayer();

  playSound(int soundNumber) async {
    await player.play(
      AssetSource('music/note$soundNumber.wav'),
    );
  }

  Widget layTheKeys(
      {MaterialColor bgColor = Colors.amber, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(bgColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(0.0), // Set the border radius to 0
            ),
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        layTheKeys(bgColor: Colors.blueGrey, soundNumber: 1),
        layTheKeys(bgColor: Colors.amber, soundNumber: 2),
        layTheKeys(bgColor: Colors.teal, soundNumber: 3),
        layTheKeys(bgColor: Colors.red, soundNumber: 4),
        layTheKeys(bgColor: Colors.brown, soundNumber: 5),
        layTheKeys(bgColor: Colors.cyan, soundNumber: 6),
        layTheKeys(bgColor: Colors.orange, soundNumber: 7),
      ],
    );
  }
}
