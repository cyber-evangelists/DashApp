import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class TableReservationScreenTopcard extends StatelessWidget {
  const TableReservationScreenTopcard({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = getDeviceWidth(context);

    return Container(
      padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
      height: deviceWidth * 140,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(238, 241, 242, 1),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32))),
      child: Container(
        width: 344 * deviceWidth,
        height: 111 * deviceWidth,
        padding: const EdgeInsets.only(top: 18, left: 17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 12.0,
              color: Color.fromRGBO(214, 219, 220, 0.75),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pizza Hut',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.0),
            ),
            SizedBox(height: 11.0 * deviceWidth),
            Row(
              children: [
                Image.asset(
                    'assets/images/ResturantScreen/Group 1000002214.png'),
                SizedBox(width: 9.0 * deviceWidth),
                const Text(
                  '4.5 (100+ ratings)  \$300 for two',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 13.0 * deviceWidth),
            const Text(
              'Pizza, Fast Food',
              style: TextStyle(
                  color: Color.fromRGBO(102, 105, 105, 1),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
