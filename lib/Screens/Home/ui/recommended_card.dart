import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class RecommnendedCard extends StatelessWidget {
  const RecommnendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/HomeScreen/BG.png',
                colorBlendMode: BlendMode.luminosity,
              ),
              Positioned(
                  bottom: 14,
                  left: 14,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 168, 50, 1),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: const Text(
                      'Currently Closed',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              const Positioned(
                  right: 4,
                  top: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: primaryColor,
                    ),
                  )),
            ],
          ),
          const SizedBox(height: 12.0),
          const Text(
            'McDonald\'s',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6.0),
          Row(
            children: [
              const Text(
                'Chinese - American . ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400),
              ),
              Image.asset('assets/images/ResturantScreen/Group 1000002214.png'),
              const Text(
                ' 4.5 . 35 min',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor, minimumSize: const Size(56, 20)),
            child: const Text('7:00 pm'),
          ),
        ],
      ),
    );
  }
}
