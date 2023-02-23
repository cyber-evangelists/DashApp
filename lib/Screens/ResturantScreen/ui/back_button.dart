import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class BackButtonResturant extends StatelessWidget {
  const BackButtonResturant({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      width: 344 * deviceWidth,
      height: 64 * deviceWidth,
      padding: const EdgeInsets.fromLTRB(12, 9, 13, 11),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Left
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '2 Items',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: '\$500  ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: '\$500',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              )),
            ],
          ),

          //Right
          Row(
            children:  [
              const Text(
                'Book Table',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.adaptive.arrow_forward_outlined, color: Colors.white,),
            ],
          ),
        ],
      ),
    );
  }
}
