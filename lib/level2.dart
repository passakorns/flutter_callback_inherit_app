import 'dart:math';

import 'package:flutter/material.dart';

import 'level3.dart';

class Level2 extends StatelessWidget {

  final int counter;
  final Function updateCounter;

  const Level2({super.key, 
            required this.counter, 
            required this.updateCounter});

  @override
  Widget build(BuildContext context) {
    int randCounter = Random().nextInt(8)+1;
    return SizedBox(
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
            onPressed: () {
              updateCounter(randCounter);
            }, 
            child: const Text('  Set   ')
            ),
          const SizedBox(height: 60,),
          Level3(counter:counter, updateCounter: updateCounter)
        ],
      ),
    );
  }
}