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
            ],
          ),
          const SizedBox(height: 9.0),
          const Expanded(
            child: Text('hi'),
          ),
        ],
      ),
    );
  }
}
