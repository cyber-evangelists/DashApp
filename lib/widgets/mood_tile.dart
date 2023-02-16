import 'package:flutter/material.dart';

class MoodTile extends StatelessWidget {
  const MoodTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Image.asset('assets/images/HomeScreen/kindpng_1519867 1.png'),
          const Text(
            'Veg Only',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(77, 81, 81, 1),
            ),
          ),
        ],
      ),
    );
  }
}
