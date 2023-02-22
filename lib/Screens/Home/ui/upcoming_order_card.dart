import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class UpcomingOrderCard extends StatelessWidget {
  const UpcomingOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      padding: const EdgeInsets.all(8.0),
      height: 130 * deviceWidth,
      width: 320 * deviceWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.deepPurple,
      ),
      child: Row(
        children: [
          //Image
          Image.asset('assets/images/HomeScreen/Rectangle 4133.png'),
          SizedBox(width: 10.0 * deviceWidth),
          //Card Details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Cafe Vita',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 150 * deviceWidth,
                height: 40 * deviceWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 x white bean hummus, 1  x AppleBrie',
                      style: TextStyle(
                        fontSize: 12.0 * deviceWidth,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 0.7),
                      ),
                    ),
                    Text(
                      'Today at 06:10 pm - 4 People',
                      style: TextStyle(
                        fontSize: 12.0 * deviceWidth,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 0.7),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0 * deviceWidth
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Check in',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(57, 81, 177, 1)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
