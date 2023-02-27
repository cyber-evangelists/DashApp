import 'package:flutter/material.dart';

class Idicator extends StatelessWidget {
  final bool isActive;
  const Idicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            width: 26.0,
            height: 15.0,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(9.5),
            ),
            child: const Center(
              child: Text(
                '1/3',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
          )
        : Container(
            width: 5.0,
            height: 5.0,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(217, 217, 217, 1),
              borderRadius: BorderRadius.circular(8.0),
            ),
          );
  }
}
