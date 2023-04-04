import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MeanGirlsApp());

class MeanGirlsApp extends StatelessWidget {
  Future<void> playAudio(int soundNumber) async {
    final player = AudioPlayer();
    player.setVolume(5.0);
    await player.play((AssetSource('audio$soundNumber.wav')));
  }

  Expanded buildButton({Color? color, required int soundNumber, required String text}){
    return Expanded(
      child: ElevatedButton(
        style: TextButton.styleFrom(
            backgroundColor: color),
            onPressed: () {
              playAudio(soundNumber);
            }, child: Text(text),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildButton(color: Colors.pink[50], soundNumber: 1, text: 'Popular'),
                  buildButton(color: Colors.pink[100], soundNumber: 2, text: 'Awesome'),
                  buildButton(color: Colors.pinkAccent, soundNumber: 3, text: 'Shopping'),
                  buildButton(color: Colors.pink[700], soundNumber: 4, text: 'Halloween'),
                  buildButton(color: Colors.pink[400], soundNumber: 5, text: 'Sorry'),
                  buildButton(color: Colors.pink, soundNumber: 6, text: 'Teachers'),
                  buildButton(color: Colors.pink[800], soundNumber: 7, text: 'Africa'),
                ],
              ),
        ),
      ),
    );
  }
}
