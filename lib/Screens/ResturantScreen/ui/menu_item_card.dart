import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class MenueItemCard extends StatelessWidget {
  const MenueItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      padding: const EdgeInsets.all(9.0),
      height: 136 * deviceWidth,
      width: 344 * deviceWidth,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(214, 219, 220, 0.65),
            blurRadius: 32,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
      ),
      child: Row(
        children: [
          //Card Image
          Stack(children: [
            Image.asset('assets/images/ResturantScreen/Rectangle 4133.png'),
            Positioned(
              top: 6.0,
              left: 6.0,
              child: Image.asset(
                  'assets/images/ResturantScreen/Group 1000002218.png'),
            ),
          ]),
          SizedBox(width: 12.0 * deviceWidth),

          //card body
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //card title
              Row(
                children: [
                  const Text(
                    'Margherita Pizza',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(39, 44, 63, 1),
                    ),
                  ),
                  SizedBox(width: 40.0 * deviceWidth),
                  Image.asset(
                      'assets/images/ResturantScreen/Group 1000002214.png'),
                  const Text(
                    '5.0',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 21.0 * deviceWidth),
              //price
              const Text(
                '\$200',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: primaryColor,
                ),
              ),

              //description
              const Text(
                '2 McAloo Tikki Burgers + 2 Fries(L)',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(102, 105, 105, 1),
                ),
              ),

              //Card Button
              Container(
                width: 81,
                height: 27,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(219, 219, 219, 1),
                    borderRadius: BorderRadius.circular(7.0)),
                child: const Center(
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
