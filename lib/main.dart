import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playsound(int soundno) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundno.wav'),);
  }
  Expanded buildKey ({required Color color , required int soundno}){
   return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
         backgroundColor : color,
       shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.zero,
       ),
   ),
        onPressed: () async {
          playsound(soundno);
        }, child: Text(''),
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
              buildKey(color : Colors.red, soundno : 1),
              buildKey(color : Colors.orange, soundno : 2),
              buildKey(color : Colors.yellow, soundno : 3),
              buildKey(color : Colors.green, soundno : 4),
              buildKey(color : Colors.teal, soundno : 5),
              buildKey(color : Colors.blue, soundno : 6),
              buildKey(color : Colors.purple, soundno : 7),
            ],
          ),
        ),
      ),
    );
  }
}
