import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return SizedBox(
      height: 100 * deviceWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/images/TableResevationScreen/Oval 4.png'),
              const SizedBox(width: 12.0),
              const Text(
                'Susie Bridges',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(width: 9.0),
              Container(
                width: 36 * deviceWidth,
                height: 20 * deviceWidth,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                    child: Text(
                  '5.0',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
              ),
            ],
          ),
          const SizedBox(height: 9.0),
          const Expanded(
            child: Text(
              'Great food I like this place, I think best place of Colarodo. Chilling with Friends :)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(77, 81, 81, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
