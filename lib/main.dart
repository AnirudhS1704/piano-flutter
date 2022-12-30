import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(PianoApp());

class PianoApp extends StatelessWidget {
  Future<void> playSound(String noteNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('$noteNumber.wav'));
  }

  Expanded PianoKey(String s1) {
    return Expanded(
      flex: 1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 2.0, top: 2.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, elevation: 40),
                onPressed: () {
                  playSound(s1);
                },
                child: null,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Expanded PianoKeyWithSuperKey(String s1, String s2) {
    return Expanded(
      flex: 1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 2.0, top: 2.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, elevation: 40),
                onPressed: () {
                  playSound(s1);
                },
                child: null,
              ),
            ),
          ),
          Positioned(
            top: -25,
            child: Container(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    playSound(s2);
                  },
                  child: null),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Piano',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          backgroundColor: Colors.grey,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PianoKeyWithSuperKey('C', 'Db'),
              PianoKey('B'),
              PianoKeyWithSuperKey('A', 'Bb'),
              PianoKeyWithSuperKey('G', 'Ab'),
              PianoKeyWithSuperKey('F', 'Gb'),
              PianoKey('E'),
              PianoKeyWithSuperKey('D', 'Eb'),
              PianoKeyWithSuperKey('C', 'Db'),
            ],
          ),
        ),
      ),
    );
  }
}
