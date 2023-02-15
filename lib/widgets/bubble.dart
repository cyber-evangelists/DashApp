import 'dart:math';

import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class InterstedBubble extends StatelessWidget {
  const InterstedBubble({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    var rng = Random();
    double randomHeight = rng.nextInt(100).toDouble();
    if(randomHeight < 50){
      randomHeight = 50;
    }
    debugPrint('$randomHeight');
    return CircleAvatar(
      radius: randomHeight,
      backgroundColor: primaryColor,
      child: Text('data', style: TextStyle(fontSize: 12.0 * deviceWidth, fontWeight: FontWeight.w500, color: Colors.white),),
    );
  }
}
