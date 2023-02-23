import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      height: 200 * deviceWidth,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(238, 241, 242, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      alignment: Alignment.center,
      child: Container(
        width: 344 * deviceWidth,
        height: 181 * deviceWidth,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18 * deviceWidth),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 6),
                blurRadius: 12 * deviceWidth,
                color: const Color.fromRGBO(214, 219, 220, 0.75),
              )
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/ResturantScreen/Heart.png'),
                Image.asset('assets/images/ResturantScreen/ShareNetwork.png'),
              ],
            ),

            //
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                      'assets/images/ResturantScreen/Group 1000002210.png'),
                ),
                const SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pizza Hut',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Image.asset(
                            'assets/images/ResturantScreen/Group 1000002214.png'),
                        SizedBox(width: 9.0 * deviceWidth),
                        const Text(
                          '4.5 (100+ ratings)',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 9.0 * deviceWidth),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Pizza, Fast Food',
                  style: TextStyle(
                      color: Color.fromRGBO(102, 105, 105, 1),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),

            SizedBox(height: 10.0 * deviceWidth),
            Container(
              height: 38 * deviceWidth,
              width: 306 * deviceWidth,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(223, 227, 228, 1),
                borderRadius: BorderRadius.circular(9),
              ),
              child: const Center(
                child: Text(
                  'Pizza Hut',
                  style: TextStyle(
                      color: Color.fromRGBO(102, 105, 105, 1),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
