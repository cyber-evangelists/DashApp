import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      width: 375 * baseWidth,
      height: 100 * deviceWidth,
      color: primaryColor,
      padding: const EdgeInsets.fromLTRB(16, 10, 15, 0.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hello Alexa 👋',
                    style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    'Eat right! Be tight!',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              Stack(
                children: [
                  Image.asset('assets/images/HomeScreen/Group 1000002650.png'),
                  const Positioned(
                    right: 0.0,
                    child: CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.white,
                      child: Text('1'),
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 18.0),
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.white,
              labelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400, color: Color.fromRGBO(255, 220, 214, 1)),
              tabs: const [
              Text('Dining'),
              Text('Pickup'),
            ]),
          ),

          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
              Center(child: Text('data')),
              Center(child: Text('data')),
            ]),
          ),
        ],
      ),
    );
  }
}
