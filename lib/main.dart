import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded pianoButton(Color coloring, int audio){
    return Expanded(
      child: FlatButton(
        color: coloring,
        onPressed: (){
          final player = AudioCache();
          player.play('note$audio.wav');
        },
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              pianoButton(Colors.red,1),
              pianoButton(Colors.orange,2),
              pianoButton(Colors.yellow,3),
              pianoButton(Colors.green,4),
              pianoButton(Colors.indigo,5),
              pianoButton(Colors.blue,6),
              pianoButton(Colors.purple,7)
            ],
          ),
        ),
      ),
    );
  }
}
