import 'dart:async';

import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller> {
  Random randomizer = Random();
  int currentImageIndex = 0;
  int counter = 1;
  List<String> images = [
    'assets/images/dice1.png',
    'assets/images/dice2.png',
    'assets/images/dice3.png',
    'assets/images/dice4.png',
    'assets/images/dice5.png',
    'assets/images/dice6.png',
  ];
  // AudioPlayer player = AudioPlayer();

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform.rotate(
            angle: randomizer.nextDouble() * 180,
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(images[currentImageIndex],
              ),
            ),
          ),
          SizedBox(height: 200),

          ElevatedButton(onPressed: () {
           // Dice Sound
           //   await player.setAsset('assets/audio/roll_dice.mp3');
           //   player.play();
           // Roll the Dice
            Timer.periodic(Duration(milliseconds: 80),(timer) {
              counter++;
              setState(() {
                currentImageIndex = randomizer.nextInt(6);
              });
              if (counter >= 14) {
                timer.cancel();
                setState(() {
                  counter = 1;
                   });
                  }
                }
              );
           },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.deepPurple[400],
            ),
            child: Text('Roll',
            style: TextStyle(
              fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
