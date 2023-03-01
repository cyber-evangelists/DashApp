import 'package:dash_app/Provider/google_signin_provider.dart';
import 'package:dash_app/Provider/user.dart';
import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

buildAppBar(BuildContext context, tabController) {
  double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
  String? userName = context.read<UserProvider>().userName;
  return AppBar(
        flexibleSpace: Container(
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
                    children:  [
                      Text(
                        '${userName?? 'Hello Alexa'} 👋',
                        style: const TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      const Text(
                        'Eat right! Be tight!',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      context.read<GoogleSignInProvider>().googleLogout();
                    },
                    child: Stack(
                      children: [
                        Image.asset(
                            'assets/images/HomeScreen/Group 1000002650.png'),
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
                  ),
                ],
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: TabBar(
                controller: tabController,
                isScrollable: true,
                indicatorColor: Colors.white,
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 16.0),
                unselectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 220, 214, 1)),
                tabs: const [
                  Text('Dining'),
                  Text('Pickup'),
                ]),
          ),
        ),
      );
}