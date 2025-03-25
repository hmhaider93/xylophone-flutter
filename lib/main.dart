import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Future<void> playSound(int soundNumber) async {
    final player1 = AudioPlayer(); 
    await player1.setSource(AssetSource('note$soundNumber.wav'));
    player1.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.blueGrey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      playSound(1);
                    },
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async{
                      playSound(2);
                    },
                    child: Container(
                      color: Colors.orange,
                      child: SizedBox.expand(),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: Container(
                      child: SizedBox.expand(),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: Container(
                      child: SizedBox.expand(),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(5);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: Container(
                      child: SizedBox.expand(),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(6);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: Container(
                      child: SizedBox.expand(),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playSound(7);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: Container(
                      child: SizedBox.expand(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
