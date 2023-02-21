import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';


class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0),
      margin: const EdgeInsets.only(right: 11),
      width: 284,
      height: 163,
      decoration: BoxDecoration(
        color: primaryColor,
        image: const DecorationImage(
            image: AssetImage('assets/images/HomeScreen/image 6.png'),
            alignment: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 18.0),
          Text(
            '50% OFF &\nget free delivery',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.white),
          ),
          SizedBox(height: 11.0),
          Text(
            'Use Coupon:',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(239, 201, 195, 1),
            ),
          ),
          Text(
            'WELCOME05',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 9.0),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
