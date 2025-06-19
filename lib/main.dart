import 'package:flutter/material.dart';

import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.deepPurpleAccent[200],
        title: Center(
          child: Text('DICE CUBE',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30),
            ),
          ),
        ),
        body: GradientContainer(
            color1: Colors.black87,
            color2: Colors.black87),
        ),
      ),
    );
  }

